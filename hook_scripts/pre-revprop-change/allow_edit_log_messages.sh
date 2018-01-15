#!/bin/sh

# Purpose: Allow log messages to be changed.

#    Note: This needs to be copied to the hooks directory of the repository
#          you want to enable log message editing, chmod +x and renamed to
#          pre-revprop-change

# Exit code of 0 equals, "Allow the edit".
if [ "$4" = "svn:log" ]; then
        exit 0
fi

# If the user tries to change any other properties outside of a regular commit,
# disallow it.
echo Property $4 cannot be changed >&2
exit 1
