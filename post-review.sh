#!/bin/sh

USER=blairsu
PASS=a7JubkqEeCJ8hy
RBT=/usr/local/bin/rbt
GIT=/usr/bin/git
REPO=$1

# we should test prerequiste is ready, including:

# 1. git is installed
if [ ! -f $GIT ]; then
   echo "git command is not exist at $GIT, please check it."
   exit -1
fi

# 2. rbt command exist
if [ ! -f $RBT ]; then
   echo "RBT is not exist at $RBT, please check it."
   exit -1
fi

# 3. reviewboard server URL is inputed
URL=`$GIT config --get reviewboard.url`
if [ "$URL" == "" ];  then
   echo "reviewboard.url is not configured at $REPO, please use git config reviewboard.url <ReviewBoard Server URL> to set it first."
   exit -1
fi

# only pass one commit, so I will can rbt to post just 1 commit here
if [ "$#" -eq 2 ]; then
   echo "1 commit, SHA = $2"
   /usr/local/bin/rbt post -g auto --username=$USER --password=$PASS $2
fi

# pass multiple commit, then we should parsing the 1st and the last commit, then post range of commit via rbt command
if [ "$#" -gt 3 ]; then
   echo "multi-commit, parsing commit SHA here"
fi
