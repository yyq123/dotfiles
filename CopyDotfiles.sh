#!/bin/bash

SOURCEDIR=/home/yyq/
DESTDIR=/media/u01/dotfiles/

cp -uv $SOURCEDIR.tmux.conf $DESTDIR
cp -uv $SOURCEDIR.vimrc $DESTDIR
cp -uv $SOURCEDIR.zshrc $DESTDIR
#rsync -avh --exclude="*.bak" $SOURCEDIR $DESTDIR
