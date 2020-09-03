#!/bin/bash

default1="1"
default2="2"

variable1=${1:-${default1}}
variable2=${2:-${default2}}

echo ${variable1}
echo ${variable2}
