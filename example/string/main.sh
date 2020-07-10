#!/bin/bash
https://blog.csdn.net/edwzhang/article/details/53332900


foo=1:2:3:4:5
echo ${foo##*:}
5
This trims everything from the front until a ':', greedily.

${foo  <-- from variable foo
  ##   <-- greedy front trim
  *    <-- matches anything
  :    <-- until the last ':'
}
echo ${foo#*:}

可能不对, 但是这里sed有个placeholder的功能
You can do it quite simple with sed
echo 'com.io.$(asdfasdf)'|sed -e 's/.*(\(.*\))/\1/g'
asdfasdf

For two fields:
echo 'com.io.$(asdfasdf).$(ddddd)'|sed -e 's/.*((.*)).$((.*))/\1 \2/g'
asdfasdf ddddd

sed -e 's/.*(\(.*\))/\1/g'
          \_/\____/  \/
           |    |     |_ print the placeholder content
           |    |___ placeholder selecting the text inside the paratheses
           |____ select the text from beginning including the first paranthese

二、按指定的字符串截取
1、第一种方法:
${varible##*string} 从左向右截取最后一个string后的字符串
${varible#*string}从左向右截取第一个string后的字符串
${varible%%string*}从右向左截取最后一个string后的字符串
${varible%string*}从右向左截取第一个string后的字符串
“*”只是一个通配符可以不要

例子：
$ MYVAR=foodforthought.jpg
$ echo ${MYVAR##*fo}
rthought.jpg
$ echo ${MYVAR#*fo}
odforthought.jpg

2、第二种方法：${varible:n1:n2}:截取变量varible从n1到n2之间的字符串。

可以根据特定字符偏移和长度，使用另一种形式的变量扩展，来选择特定子字符串。试着在 bash 中输入以下行：
$ EXCLAIM=cowabunga
$ echo ${EXCLAIM:0:3}
cow
$ echo ${EXCLAIM:3:7}
abunga
