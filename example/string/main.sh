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