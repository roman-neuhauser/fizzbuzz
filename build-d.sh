source=$1
target=$2

: ${DC:=@DC@}
: ${DCFLAGS:=@DCFLAGS@}

mkdir -p $(dirname $target)
$DC $DCFLAGS -o $target $source >$target.compiler 2>&1 \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
