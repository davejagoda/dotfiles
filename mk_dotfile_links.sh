#!/bin/sh

for dotfile in ~/src/github/dotfiles/.??*
do
    if [ `basename $dotfile` != ".git" ]
    then
        echo ln -s $dotfile ~
        ln -s $dotfile ~
    fi
done
