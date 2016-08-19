source=$(basename $1)
target=$2

sourcedir=$(dirname $1)
targetdir=$(dirname $2)

: ${HAXE:=@HAXE@}
: ${HAXEFLAGS:=@HAXEFLAGS@}

: ${NEKOTOOLS:=@NEKOTOOLS@}

mkdir -p $targetdir
$HAXE $HAXEFLAGS -cp $sourcedir -neko $target.n -main $source >$target.compiler 2>&1 \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
exec ${NEKOTOOLS:?} boot $target.n
