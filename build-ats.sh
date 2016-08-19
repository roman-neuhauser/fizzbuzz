source=$1
target=$2

: ${ATSCC:=@ATSCC@}
: ${ATSCCFLAGS:=@ATSCCFLAGS@}

mkdir -p $(dirname $target)
$ATSCC $ATSCCFLAGS -o $target $source >$target.compiler 2>&1 \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
