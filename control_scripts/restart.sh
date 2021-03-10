dir=$(dirname $(realpath $0))
dir=$(dirname $dir)

bash $dir/control_scripts/clean.sh
bash $dir/setup.sh
