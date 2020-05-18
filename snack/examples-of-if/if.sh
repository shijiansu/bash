#!/bin/bash

It is correct like this:

 if [ -f $VAR1 ] && [ -f $VAR2 ] && [ -f $VAR3 ]
 then  ....
or like

 if [[ -f $VAR1 && -f $VAR2 && -f $VAR3 ]]
 then  ....
or even

 if [ -f $VAR1 -a -f $VAR2 -a -f $VAR3 ]
 then  ....
