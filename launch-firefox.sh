#!/bin/sh

# fix this path to point to your Firefox app
open ../firefox.app

sleep 4

# ggdb is a custom-compiled gdb 7.x for OS X
ggdb -nx -x ./gdbinit -p `ps x | grep firefox | grep -v grep | grep -v debug | awk '{print $1}'`

# EOF
