#!/bin/bash

function x() { echo "Hello world"; }
function around() { echo "before"; $1; echo "after"; }

around x

# before
# Hello world
# after

echo ""

function x() { echo "x(): Passed $1 and $2"; }
function around() { echo "before";"$@"; echo "after"; } # "$@" -> x 1st 2nd

around x 1st 2nd

# before
# x(): Passed 1st and 2nd
# after
