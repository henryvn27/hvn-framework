#!/usr/bin/env python3
"""Write ORCA Framework's small local Orca Monitor status snapshot."""

from __future__ import annotations

import argparse
import json
import os
import re
import tempfile
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


STATUSES = {"idle", "running", "blocked", "failed", "completed"}
PROVIDERS = {"openai", "anthropic", "other"}


def iso_now() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")


def read_json(path: Path) -> dict[str, Any]:
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except (FileNotFoundError, json.JSONDecodeError, OSError):
        return {}
    return data if isinstance(data, dict) else {}


def read_text(path: Path) -> str:
    try:
        return path.read_text(encoding="utf-8")
    except OSError:
        return ""


def parse_markdown_field(text: str, label: str) -> str | None:
    pattern = re.compile(rf"^- {re.escape(label)}:\s*(.+?)\s*$", re.MULTILINE)
    match = pattern.search(text)
    if not match:
        return None
    value = match.group(1).strip()
    return value if value and value != "-" else None


def positive_int(value: str) -> int:
    parsed = int(value, 10)
    if parsed < 0:
        raise argparse.ArgumentTypeError("value must be >= 0")
    return parsed


def parse_model(value: str) -> dict[str, Any]:
    parts = value.split(":", 2)
    if len(parts) != 3:
        raise argparse.ArgumentTypeError("model entries must use provider:model:tokens")
    provider, model, tokens_raw = (part.strip() for part in parts)
    if provider not in PROVIDERS:
        raise argparse.ArgumentTypeError("provider must be openai, anthropic, or other")
    if not model:
        raise argparse.ArgumentTypeError("model must not be empty")
    tokens = positive_int(tokens_raw)
    return {"provider": provider, "model": model, "tokens": tokens}


def first_string(*values: Any) -> str | None:
    for value in values:
        if isinstance(value, str):
            stripped = value.strip()
            if stripped and stripped != "-":
                return stripped
    return None


def first_int(*values: Any) -> int | None:
    for value in values:
        if isinstance(value, int) and value >= 0:
            return value
    return None


def derive_from_artifacts(source_root: Path) -> dict[str, Any]:
    orca_dir = source_root / ".orca"
    runtime = read_json(orca_dir / "runtime-status.json")
    shared_json = read_json(orca_dir / "shared-state.json")
    goal = read_json(orca_dir / "goal-status.json")
    metrics = read_json(orca_dir / "workflow-metrics.json")
    receipt = read_json(orca_dir / "execution-receipt.json")

    shared_md = read_text(orca_dir / "shared-state.md")
    runtime_md = read_text(orca_dir / "runtime-status.md")
    goal_md = read_text(orca_dir / "goal-status.md")
    latest_receipt_txt = read_text(orca_dir / "latest-receipt.txt").strip()

    blockers = []
    for candidate in [
        shared_json.get("active_blockers"),
        goal.get("blockers"),
        receipt.get("risks"),
    ]:
        if isinstance(candidate, list):
            blockers.extend(item for item in candidate if item)

    workflow = first_string(
        runtime.get("recommended_workflow_mode"),
        goal.get("workflow"),
        metrics.get("workflow"),
        parse_markdown_field(runtime_md, "Recommended workflow mode"),
        parse_markdown_field(goal_md, "Workflow"),
    )
    step = first_string(
        shared_json.get("current_phase"),
        shared_json.get("active_phase"),
        goal.get("step"),
        metrics.get("step"),
        parse_markdown_field(shared_md, "Active phase"),
        parse_markdown_field(goal_md, "Current step"),
    )
    explicit_status = first_string(goal.get("status"), metrics.get("status"), receipt.get("status"))
    status = explicit_status if explicit_status in STATUSES else None
    if status is None and blockers:
        status = "blocked"
    if status is None and (workflow or step):
        status = "running"

    recent_models = metrics.get("recent_models")
    if not isinstance(recent_models, list):
        recent_models = None

    return {
        "workflow": workflow,
        "step": step,
        "status": status,
        "queue_count": first_int(metrics.get("queue_count")),
        "failing_checks": first_int(metrics.get("failing_checks")),
        "last_receipt": first_string(
            runtime.get("latest_receipt"),
            receipt.get("path"),
            receipt.get("id"),
            latest_receipt_txt,
            parse_markdown_field(runtime_md, "Latest receipt"),
        ),
        "recent_models": recent_models,
    }


def normalize_recent_models(models: list[Any] | None) -> list[dict[str, Any]] | None:
    if not models:
        return None
    normalized = []
    for item in models:
        if not isinstance(item, dict):
            continue
        provider = item.get("provider")
        model = item.get("model")
        tokens = item.get("tokens")
        if provider not in PROVIDERS or not isinstance(model, str) or not isinstance(tokens, int):
            continue
        if tokens < 0:
            continue
        normalized.append({"provider": provider, "model": model, "tokens": tokens})
    return normalized[:5] or None


def atomic_write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, temp_name = tempfile.mkstemp(prefix=f".{path.name}.", suffix=".tmp", dir=str(path.parent))
    temp_path = Path(temp_name)
    try:
        with os.fdopen(fd, "w", encoding="utf-8") as handle:
            json.dump(payload, handle, indent=2, sort_keys=False)
            handle.write("\n")
            handle.flush()
            os.fsync(handle.fileno())
        os.replace(temp_path, path)
    finally:
        try:
            temp_path.unlink()
        except FileNotFoundError:
            pass


def build_snapshot(args: argparse.Namespace) -> dict[str, Any]:
    source_root = Path(args.source_root).resolve()
    derived = derive_from_artifacts(source_root)

    project = first_string(args.project, source_root.name) or "unknown"
    workflow = first_string(args.workflow, derived.get("workflow"), "none")
    step = first_string(args.step, derived.get("step"), "idle")
    status = args.status or derived.get("status") or "idle"
    if status not in STATUSES:
        status = "idle"

    payload: dict[str, Any] = {
        "updated_at": iso_now(),
        "active_run": {
            "project": project,
            "workflow": workflow,
            "step": step,
            "status": status,
        },
    }

    queue_count = args.queue_count if args.queue_count is not None else derived.get("queue_count")
    failing_checks = args.failing_checks if args.failing_checks is not None else derived.get("failing_checks")
    last_receipt = first_string(args.last_receipt, derived.get("last_receipt"))
    recent_models = args.model or normalize_recent_models(derived.get("recent_models"))

    if queue_count is not None:
        payload["queue_count"] = queue_count
    if failing_checks is not None:
        payload["failing_checks"] = failing_checks
    if last_receipt is not None:
        payload["last_receipt"] = last_receipt
    if recent_models:
        payload["recent_models"] = recent_models

    return payload


def default_project_path(slug: str) -> Path:
    return Path.home() / ".orca-framework" / "projects" / slug / "status.json"


def default_global_path() -> Path:
    return Path.home() / ".orca-framework" / "state" / "orca-monitor.json"


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source-root", default=".", help="Project root used for .orca artifact discovery")
    parser.add_argument("--project", help="Project name to expose in active_run.project")
    parser.add_argument("--project-slug", default=os.environ.get("ORCA_MONITOR_PROJECT_SLUG", "orca-monitor"))
    parser.add_argument("--workflow", help="Current ORCA workflow")
    parser.add_argument("--step", help="Current workflow step")
    parser.add_argument("--status", choices=sorted(STATUSES), help="Current workflow status")
    parser.add_argument("--queue-count", type=positive_int)
    parser.add_argument("--failing-checks", type=positive_int)
    parser.add_argument("--last-receipt")
    parser.add_argument("--model", action="append", type=parse_model, help="provider:model:tokens")
    parser.add_argument("--output", type=Path, help="Override primary output path")
    parser.add_argument("--write-global", action="store_true", help="Also write the global fallback snapshot")
    parser.add_argument("--global-output", type=Path, default=default_global_path())
    args = parser.parse_args()

    payload = build_snapshot(args)
    primary = args.output or default_project_path(args.project_slug)
    atomic_write_json(primary.expanduser(), payload)
    if args.write_global:
        atomic_write_json(args.global_output.expanduser(), payload)
    print(str(primary.expanduser()))
    if args.write_global:
        print(str(args.global_output.expanduser()))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
