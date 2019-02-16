#!/bin/sh

for dotfile in `dirname "$0"`/.??*
do
    if [ `basename $dotfile` != ".git" ]
    then
        echo ln -s $dotfile ~
        ln -s $dotfile ~
    fi
done
