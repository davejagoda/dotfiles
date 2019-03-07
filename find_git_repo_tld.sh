#!/bin/sh

relative_path_to_script_dir=$(dirname "$0")
git_dir=$(cd "${relative_path_to_script_dir}" && git rev-parse --show-toplevel)
