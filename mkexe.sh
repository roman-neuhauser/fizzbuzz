source=$1
target=$2
interp=$3

mkdir -p $(dirname $target)
sed -e "1s^#![^[:space:]]*^#!$interp^" < $source > $target.tmp
install -m 0755 $target.tmp $target
rm -f $target.tmp
