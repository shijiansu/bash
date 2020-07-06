#!/bin/bash

# the colon after letter
## 决定是不是必须带参数值
/bin/bash test/example.sh -a hello -b
# this is -a the arg is ! hello
# test/example.sh: option requires an argument -- b
# Invalid option: -

/bin/bash test/example.sh -a hello -b hello -c
# this is -a the arg is ! hello
# this is -b the arg is ! hello
# this is -c the arg is !

# first colon
## 决定错误信息处理方式
/bin/bash test/example.sh with_first_colon.sh -a
# 输出空行 

/bin/bash test/example.sh without_first_colon.sh -a
# 没输出

# 当optstring以":"开头时, getopts会区分invalid option错误和miss option argument错误.
# invalid option时, varname会被设成?, $OPTARG是出问题的option； 
# miss option argument时, varname会被设成:, $OPTARG是出问题的option.  
# 如果optstring不以":"开头, invalid option错误和miss option argument错误都会使varname被设成?, $OPTARG是出问题的option.
