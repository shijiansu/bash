#!/bin/bash
# bad practice
example_1="NOTHING"
function example_1_bad_practice() {
  example_1='SOMETHING' # bad because it is global
}

example_1_bad_practice
echo $example_1 # SOMETHING

# command substitution
example_2="NOTHING"
function example_2_command_substitution() {
  local _example_2='SOMETHING' # local variable
  # echo "it will break!" # if there is another printout here, it will break
  echo "$_example_2"
}

example_2=$(example_2_command_substitution) # or example_2=`example_2_command_substitution`
echo $example_2

# set variable by eval
example_3="NOTHING"
function example_3_eval() {
  local _returnVar=$1 # as variable name, but value
  local new_value='SOMETHING'
  eval $_returnVar="'$new_value'"
}

example_3_eval example_3
echo $example_3

# set variable by eval - wrong
example_4="NOTHING"
function example_3_eval_wrong() {
  local example_4=$1
  local new_value='SOMETHING'
  eval $example_4="'$new_value'"
}

example_3_eval_wrong example_4
echo $example_4 # still as NOTHING
