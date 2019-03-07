#!/bin/sh

# use find_git_repo_tld.sh to set git_dir

relative_path_to_script_dir=$(dirname "$0")
. "${relative_path_to_script_dir}/find_git_repo_tld.sh"

for dotfile in "${git_dir}"/.??*
do
    if [ "$(basename "${dotfile}")" != ".git" ]
    then
        echo ln -s "${dotfile}" "${HOME}"
        ln -s "${dotfile}" "${HOME}"
    fi
done
