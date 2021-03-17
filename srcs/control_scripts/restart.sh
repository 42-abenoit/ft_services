#!/bin/bash

dir=$(dirname $(realpath $0))
dir=$(dirname $dir)
dir=$(dirname $dir)

bash $dir/srcs/control_scripts/clean.sh
bash $dir/setup.sh
