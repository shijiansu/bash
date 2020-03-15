#!/bin/bash

echo ""
echo "[Location in test folder]"
echo "--------------------------------------------------------------------------------"
# $0, dirname
script_path="$0"; echo "script_path = $script_path" # as parameter pass to /bin/bash
## safer to use $BASH_SOURCE in lieu of $0
script_path="$BASH_SOURCE"; echo "script_path = $script_path" # as parameter pass to /bin/bash
script_path="${BASH_SOURCE[0]}"; echo "script_path = $script_path" # as parameter pass to /bin/bash
script_folder_path="$(cd "$(dirname "$0")";pwd)"; echo "script_folder_path = $script_folder_path"
script_folder_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"; echo "script_folder_path = $script_folder_path"
echo ""
# pwd, dirname
execution_folder_path=$(cd "$(dirname "$BASH_FOLDER")";pwd); echo "execution_folder_path = $execution_folder_path" # where you execute the bash
execution_folder_path="$(pwd)"; echo "execution_folder_path = $execution_folder_path" # where you execute the bash
echo ""
# basename, $PWD
execution_folder=$(basename ~+); echo "execution_folder = $execution_folder" # where you execute the bash
execution_folder="$(basename "$PWD")"; echo "execution_folder = $execution_folder" # where you execute the bash
execution_folder="${PWD##*/}"; echo "execution_folder = $execution_folder" # where you execute the bash
execution_parent_folder_path="${PWD%/*}"; echo "execution_parent_folder_path = $execution_parent_folder_path" # where you execute the bash
