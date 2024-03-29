#!/bin/bash

# the colon after letter
## 决定是不是必须带参数值
/bin/bash example.sh -a hello -b
# this is -a the arg is ! hello
# example.sh: option requires an argument -- b
# Invalid option: -

/bin/bash example.sh -a hello -b hello -c
# this is -a the arg is ! hello
# this is -b the arg is ! hello
# this is -c the arg is !

# first colon
## 决定错误信息处理方式
/bin/bash example.sh with-first-colon.sh -a
# 输出空行 

/bin/bash example.sh without-first-colon.sh -a
# 没输出

# 当optstring以":"开头时, getopts会区分invalid option错误和miss option argument错误
# invalid option时, var name会被设成?, $OPTARG 是出问题的 option
# miss option argument时, var name会被设成:, $OPTARG 是出问题的 option
# 如果opt string不以":"开头, invalid option错误和miss option argument错误都会使var name被设成?, $OPTARG是出问题的option
