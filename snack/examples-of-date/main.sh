#!/bin/bash

date "+%Y-%m-%d %H:%M:%S"
date "+%s"

# Format options	Purpose of Option	Output
# date +%a	缩略方式显示星期 (like Mon, Tue, Wed)	Thu
# date +%A	全称显示星期 (like Monday, Tuesday)	Thursday
# date +%b	Displays Month name in short (like Jan, Feb, Mar )	Feb
# date +%B	Displays Month name in full short (like January, February)	February
# date +%d	Displays Day of month (e.g., 01)	07
# date +%D	Displays Current Date; shown in MM/DD/YY	02/07/13
# date +%F	Displays Date; shown in YYYY-MM-DD	2013-02-07
# date +%H	Displays hour in (00..23) format	23
# date +%I	Displays hour (01..12) format	11
# date +%j	Displays day of year (001..366)	038
# date +%m	Displays month (01..12)	02
# date +%M	Displays minute (00..59)	44
# date +%S	Displays second (00..60)	17
# date +%N	Displays nanoseconds (000000000..999999999)	573587606
# date +%T	Displays time; shown as HH:MM:SS Note: Hours in 24 Format	23:44:17
# date +%u	Displays day of week (1..7); 1 is Monday	4
# date +%U	Displays week number of year, with Sunday as first day of week (00..53)	05
# date +%Y	Displays full year i.e. YYYY	2013
# date +%Z	alphabetic time zone abbreviation (e.g., EDT)	IS

# different date format in Linux and Max
os=$(uname -s)
if [[ "$os" == "Linux" ]]; then # Linux
    date +%Y-%m-%d --date='-1 day -1 year'
elif [[ "$os" == "Darwin" ]]; then # Mac
    date -v-1d -v-1y +%Y-%m-%d
else
    echo "unknown OS"
    exit 1
fi