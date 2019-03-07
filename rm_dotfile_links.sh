#!/bin/sh

# use find_git_repo_tld.sh to set git_dir

relative_path_to_script_dir=$(dirname "$0")
. "${relative_path_to_script_dir}/find_git_repo_tld.sh"

for dotfile in "${git_dir}"/.??*
do
    if [ "$(basename "${dotfile}")" != ".git" ]
    then
        filepath="${HOME}/$(basename "${dotfile}")"
        if [ -h "${filepath}" ]
        then
            echo "rm ${filepath}"
            rm "${filepath}"
        fi
    fi
done
