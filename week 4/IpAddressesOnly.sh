#!/bin/bash

#using the stream editor to not display any lines
#excepting lines 1, 2 and 5, which contain the relevant info

./IpInfo.sh | sed -n -e 1,2p -e 5p 