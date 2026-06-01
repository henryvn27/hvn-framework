# Vercel Deploy Guardrails

This page is a compact paved road for recurring Vercel deploy friction seen in blind product runs.
Use it when the goal is a low-ceremony deploy path (often static web / SPA) and Vercel is the chosen surface.

## 1) Separate product name from deploy slug

Keep two identifiers:

- **Display name** (human): `ShipNotes`
- **Slug** (machine): `shipnotes`

Prefer creating the workspace folder using the slug (lowercase) even when the product display name is TitleCase:

```sh
mkdir -p shipnotes
```

This avoids Vercel inferring an invalid project name from an uppercase directory name.

## 2) If deploy fails because the name is not lowercase

Symptoms can include a Vercel 400 during `vercel deploy` because the inferred project name is not lowercase.

Preferred recovery path:

- Link the local folder to a valid lowercase project (interactive):

```sh
vercel link
```

Then deploy again:

```sh
vercel deploy --prod --yes
```

Avoid relying on `--name` as a long-term fix if the CLI warns it is deprecated; treat it as an emergency override only.

## 3) Static SPA routing guardrail (`vercel.json`)

If your app is a SPA with client-side routing (React Router, etc.), refreshes can 404 without a rewrite.

Template: [`templates/vercel-static-spa/vercel.json`](../../templates/vercel-static-spa/vercel.json)

## 4) Git hygiene

The Vercel CLI writes local metadata under `.vercel/`. Keep it out of git for most repos:

- add `.vercel/` to `.gitignore` (already defaulted in ORCA-HVN)

