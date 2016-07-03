source=$1
target=$2
outdir=$PWD/$(dirname $target)

: ${NIM:=@NIM@}
: ${NIMFLAGS:=@NIMFLAGS@}

mkdir -p $outdir
$NIM compile --nimcache:$outdir/nimcache --out:$outdir/${target##*/} $NIMFLAGS $source >$target.compiler 2>&1 \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
