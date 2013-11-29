dotvim
======

My .vim directory for Mac OS X/Linux platform

Installation:
======

git clone ssh://xp-dev.com/dotvim ~/.vim

Create symlinks:

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

cd ~/.vim
git submodule init
git submodule update
