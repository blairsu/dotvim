#!/bin/sh

# only pass one commit, so I will can rbt to post just 1 commit here
if [ "$#" -eq 1 ]; then
   echo "1 commit, SHA = $1"
fi

if [ "$#" -gt 2 ]; then
   echo "multi-commit, parsing commit SHA here"
fi
