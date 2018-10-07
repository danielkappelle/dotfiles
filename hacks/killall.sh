#!/bin/sh
# Usage
# $ ./killall.sh <youmatch>

sudo kill -9 $(ps aux | grep $1 | sed -r 's/^[a-zA-Z]+\s+([0-9]+).*$/\1/')
