source=$1
target=$2

: ${VALAC:=@VALAC@}
: ${VALACFLAGS:=@VALACFLAGS@}

mkdir -p $(dirname $target)
$VALAC $VALACFLAGS -o $target $source >$target.compiler 2>&1 \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
