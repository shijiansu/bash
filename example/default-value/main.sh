#!/bin/bash

/bin/bash test/case1.sh
# 1
# 2

/bin/bash test/case2.sh
# 1
# 2

/bin/bash test/case2.sh 3 4
# 3
# 4

/bin/bash test/case3.sh 1
# 1
# 1

/bin/bash test/fews.sh
# $\{var}:
# Substitute the value of var.
# $\{var:-word}: word
# If var is null or unset, word is substituted for var. The value of var does not change.
# $\{var:=word}: word
# If var is null or unset, var is set to the value of word.
# $\{var:?message}: word
# If var is null or unset, message is printed to standard error. This checks that variables are set correctly.
# $\{var:+word}: word # 无论var是不是有设置, 这个都是被替换
# If var is set, word is substituted for var. The value of var does not change.

export var="Hello"
/bin/bash test/fews.sh
unset var
# $\{var}: Hello
# Substitute the value of var.
# $\{var:-word}: Hello
# If var is null or unset, word is substituted for var. The value of var does not change.
# $\{var:=word}: Hello # 尝试打印var, 但是仍是Hello值, 不是word
# If var is null or unset, var is set to the value of word.
# $\{var:?message}: Hello
# If var is null or unset, message is printed to standard error. This checks that variables are set correctly.
# $\{var:+word}: word
# If var is set, word is substituted for var. The value of var does not change.
