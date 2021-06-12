#!/bin/bash
echo "bad practice because it changes global variable"
example_1="NOTHING"
echo "BEFORE: ${example_1}"

function example_1_bad_practice() {
  example_1='SOMETHING' # bad practice because it changes global variable
}
example_1_bad_practice
echo "AFTER: ${example_1}" # SOMETHING

echo ""

echo "command substitution"
example_2="NOTHING"
echo "BEFORE: ${example_2}"

function example_2_command_substitution() {
  local _example_2='SOMETHING' # local variable
  # echo "if enable echo, it will break"
  # seems here it is using 
  echo "${_example_2}"
}
example_2=$(example_2_command_substitution) # or example_2=`example_2_command_substitution`
echo "AFTER: ${example_2}" # the return value is al lthe echo printout

echo ""

echo "set variable by eval - wrong, still as NOTHING"
example_4="NOTHING"
echo "BEFORE: ${example_4}"

function example_4_eval_wrong() {
  local example_4=${1}
  local new_value='SOMETHING'
  eval ${example_4}="'${new_value}'"
}

example_4_eval_wrong example_4
echo "AFTER: ${example_4}" # still as NOTHING

echo ""

echo "set variable by eval - recommended"
example_3="NOTHING"
echo "BEFORE: ${example_3}"

function example_3_eval() {
  local _returnVar=${1} # as variable name, not the value
  local new_value='SOMETHING'
  echo "if enable echo, it will not break"
  eval ${_returnVar}="'${new_value}'"
}

example_3_eval example_3 # pass variable name
echo "AFTER: ${example_3}"
