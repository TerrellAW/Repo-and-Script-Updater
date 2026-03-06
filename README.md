### Repo and Script Updater for Bash and SQL Scripts

#### Purpose

When running a server for a SQL database or Linux in general, 
it can sometimes be useful to put a script directly in your home directory to make 
it easier to access from SQL*Plus or other software. 
This script allows the user to keep a copy of a script 
in their home folder outside of its repo while still being able to quickly 
make git commits from the command line.

The `update_repo.sh` script will overwrite the file specified in 
`env_vars.sh` with the script specified in `env_vars.sh` 
and then make a commit, ensuring the user's workflow is uninterrupted. 
On the othe hand, the `update_script.sh` script will update the 
script specified in `env_vars.sh` with changes from 
the specified script in the specified git repo.

#### Usage

Before running either script be sure to enter the 
`env_vars.sh` script and configure the environment variables.

``` bash
#!/bin/bash

export $SCRIPT="/replace/with/working/script/file/path"
export $REPO="/replace/with/repo/directory"
export $REPO_SCRIPT="replace/with/script/from/repo/relative/to/repo"
```
Afterwards simply run either `update_repo.sh` or `update_script.sh` as needed. 
They will automatically use the 
`env_vars.sh` script to set the environment variables.

**Always ensure you are dealing with the correct scripts.**
Changes done with bash commands are irreversible and 
work will be lost if a mistake is made.
