source=$1
target=$2

targetdir=$(dirname $target)

: ${NEKOC:=@NEKOC@}
: ${NEKOCFLAGS:=@NEKOCFLAGS@}

: ${NEKOTOOLS:=@NEKOTOOLS@}

mkdir -p $targetdir
$NEKOC $NEKOCFLAGS -o $targetdir $source >$target.compiler 2>&1 \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
exec ${NEKOTOOLS:?} boot $target.n
