#!/bin/bash
./jessie.sh | sed -e '
s/test$/toast/
s/and //g
'