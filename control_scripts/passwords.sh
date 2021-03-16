#!/bin/bash

cl=$(tput cols)
if [ $cl -lt 105 ]
then
g_mode=0
else
g_mode=1
fi

dir=$(dirname $(realpath $0))
dir=$(dirname $dir)

. $dir/install_scripts/prints.fn

print_passwords
