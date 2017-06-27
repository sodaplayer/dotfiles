#!/bin/sh -u

# Create XDG folders
mkdir -p `eval echo $(cat user-dirs.dirs | grep -v '^#' | cut -d'=' -f2 | tr -d '"')`
