#!/bin/bash

# hide error - redirect both stdout and stderr to /dev/null, which is "nowhere"
## https://tldp.org/LDP/abs/html/io-redirection.html
git clone git@gitlab.com:username/repo directory > /dev/null 2>&1 # older bash
git clone git@gitlab.com:username/repo directory &> /dev/null # newer bash (Above version 4 according to the link below)
