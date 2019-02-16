#!/bin/sh

for dotfile in `dirname "$0"`/.??*
do
    if [ `basename $dotfile` != ".git" ]
    then
        filepath=$HOME/`basename $dotfile`
        if [ -f "$filepath" ]
        then
            echo "rm $filepath"
            rm "$filepath"
        fi
    fi
done
