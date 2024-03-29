# mailsignature-uuid

## What?

Very basic implementation of an _email signature that includes a UUID_. Intended for use with Thunderbird.

The UUID is generated by `uuidgen` when running `generate.sh`, so that needs to be run before creating a new email.

## How?

Indicative `crontab` settings:

```
* * * * * /Users/blair/mailsignature/generate.sh
```

That generates a fresh one every minute, see also https://crontab.guru

## Why?

I use [FSNotes](https://github.com/glushchenko/fsnotes) to track my action items and delegations by UUID. Leaving UUIDs all over my email threads helps me find the relevant emails when I need them.
