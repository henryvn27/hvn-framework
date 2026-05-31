# NotebookLM Validation

NotebookLM validation should confirm the user's real integration mode before ORCA-HVN gives setup or workflow advice.

## What To Verify

- whether the user is on the official enterprise path or a community path
- whether they actually have the required access
- whether the notebook exists and is reachable in the expected account or project
- whether sharing assumptions are valid for that mode
- whether the chosen path matches the user's risk tolerance and automation needs

## Enterprise Path Checks

- project exists in Google Cloud
- billing is enabled
- Discovery Engine API is enabled
- the user has the required `Cloud NotebookLM Admin` or `Cloud NotebookLM User` roles
- the relevant users have NotebookLM Enterprise or Gemini Enterprise licenses
- notebook location and sharing scope are understood

## Community Path Checks

- MCP or browser automation tool is actually installed
- first-login or auth bootstrap has completed successfully
- the correct browser profile or account is being used
- the notebook can be found from the tool, not just from the user's normal browser
- the user understands the caveats of unofficial automation

## Red Flags

- the user assumes a broad public API exists for consumer NotebookLM
- the setup depends on hidden browser state that has not been verified
- the workflow needs strong policy guarantees, but the chosen path is an unofficial local wrapper
- the user wants generic app-stack help and NotebookLM is being forced into the conversation

## Good Outcome

A good NotebookLM validation result says:

- which mode applies
- what is verified
- what remains unverified
- whether the path is appropriate for the workflow
- what the next setup or fallback step is
