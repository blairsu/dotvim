#!/bin/sh
git config --global alias.st status
git config --global alias.ci 'commit -v'
git config --global alias.br branch
git config --global alias.last 'log -1 HEAD'
git config --global alias.lp 'log --graph --color --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
git config --global alias.unstage 'reset HEAD --'
git config --global alias.dt 'difftool -t vimdiff -y'
git config --global alias.diff 'diff color'
