#!/bin/bash

#grep the output of the UserAccounts script to search for the term "/bin/bash with any characters before and after"
./UserAccounts.sh | grep '.*/bin/bash.*'