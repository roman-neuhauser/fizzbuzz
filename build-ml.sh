source=$1
target=$2

: ${OCAMLC:=@OCAMLC@}
: ${OCAMLCFLAGS:=@OCAMLCFLAGS@}

mkdir -p $(dirname $target)
$OCAMLC $OCAMLCFLAGS -o $target $source >$target.compiler 2>&1 \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
