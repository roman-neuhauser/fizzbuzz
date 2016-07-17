source=$1
target=$2
outdir=$target.files

: ${GHC:=@GHC@}
: ${GHCFLAGS:=@GHCFLAGS@}

mkdir -p $outdir
$GHC -outputdir $outdir -o $target $GHCFLAGS $source >$target.compiler 2>&1 \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
