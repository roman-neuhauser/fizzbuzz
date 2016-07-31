source=$1
target=$2

targetdir=$(dirname $target)

: ${IDRIS:=@IDRIS@}
: ${IDRISFLAGS:=@IDRISFLAGS@}

mkdir -p $targetdir
$IDRIS $IDRISFLAGS --ibcsubdir $PWD/$target.files -o $target $source >$target.compiler 2>&1 \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
