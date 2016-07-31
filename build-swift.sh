source=$1
target=$2

: ${SWIFTC:=@SWIFTC@}
: ${SWIFTCFLAGS:=@SWIFTCFLAGS@}

mkdir -p $(dirname $target)
$SWIFTC $SWIFTCFLAGS -o $target $source >$target.compiler 2>&1 \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
