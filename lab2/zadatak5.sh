#!/bin/bash
echo "1. tocka"
echo "-----------------------------------------------------------------------------"
rename -v -n 's/^PNG-([[:digit:]]{2})([[:digit:]]{2})([[:digit:]]{4})/\1_\2_\3.png/' PNG*






