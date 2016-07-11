source=$1
target=$2

: ${LSC:=@LSC@}
: ${LSCFLAGS:=@LSCFLAGS@}

: ${NODEJS:=@NODEJS@}
: ${NODEJSFLAGS:=@NODEJSFLAGS@}

mkdir -p ${target%/*}
$LSC -c -p $LSCFLAGS $source >$target.tmp 2>$target.compiler \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
{
  printf "#!%s%s\n" "$NODEJS" "${NODEJSFLAGS:+ $NODEJSFLAGS}"
  cat $target.tmp
  rm -f $target.tmp
} >$target
chmod +x $target
