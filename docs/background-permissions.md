# Background Permissions

Background mode should degrade gracefully when it lacks permission to do part of the work.

## Permission Rule

If a required permission, token, or capability is missing:

- skip the blocked action when safe
- downgrade the workflow when possible
- record the missing permission precisely
- stop with `blocked-on-permission` when the action is truly required

## What Not To Do

Do not:

- ask for the same permission repeatedly
- loop on the same failing external call
- hide the missing permission behind a vague failure state

## Good Permission Notes

A useful permission note says:

- what action was attempted
- what permission or token was missing
- what the run did instead
- what exact human step would unblock it

Use [templates/permission-request-note.md](../templates/permission-request-note.md).
