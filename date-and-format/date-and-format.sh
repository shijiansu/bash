#!/bin/bash

date "+%Y-%m-%d %H:%M:%S" # 2021-06-10 09:04:41
date "+%s" # 1623287081

echo ""

# different date format in Linux and MacOS
os=$(uname -s)
echo "The Operation System is: ${os}"

echo "A date before,"
# Linux
if [[ "${os}" == "Linux" ]]; then
  date +%Y-%m-%d --date='-1 day -1 year'
# MacOS
elif [[ "${os}" == "Darwin" ]]; then
  date -v-1d -v-1y +%Y-%m-%d
else
  echo "unknown OS"
fi
