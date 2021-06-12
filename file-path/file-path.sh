#!/bin/bash

# $0 + dirname
# as 1st parameter pass to /bin/bash.
# safer to use $BASH_SOURCE in lieu of $0
script_name="$0";
echo "script_name = ${script_name}"
# as 1st parameter pass to /bin/bash
script_name="${BASH_SOURCE}";
echo "script_name = ${script_name}"
# as 1st parameter pass to /bin/bash
script_name="${BASH_SOURCE[0]}";
echo "script_name = ${script_name}"

echo ""

script_folder_path="$(cd "$(dirname "$0")";pwd)";
echo "script_folder_path = ${script_folder_path}"

script_folder_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)";
echo "script_folder_path = ${script_folder_path}"

# use string function
script_folder=${script_folder_path##*/};
echo "script_folder = ${script_folder}"

echo ""

# use string function
script_parent_folder_path=${script_folder_path%/*};
echo "script_parent_folder_path = ${script_parent_folder_path}"

echo ""

# pwd + dirname
# where you execute the bash
execution_folder_path=$(cd "$(dirname "$BASH_FOLDER")";pwd);
echo "execution_folder_path = ${execution_folder_path}"

# where you execute the bash
execution_folder_path="$(pwd)"; echo "execution_folder_path = ${execution_folder_path}"

echo ""

# basename + $PWD
# where you execute the bash
execution_folder=$(basename ~+);
echo "execution_folder = ${execution_folder}"

# where you execute the bash
execution_folder="$(basename "$PWD")";
echo "execution_folder = ${execution_folder}"

# where you execute the bash
execution_folder="${PWD##*/}";
echo "execution_folder = ${execution_folder}"

echo ""

# where you execute the bash
execution_parent_folder_path="${PWD%/*}";
echo "execution_parent_folder_path = $execution_parent_folder_path"
