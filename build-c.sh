source=$1
target=$2

: ${CC:=@CC@}
: ${CFLAGS:=@CFLAGS@}
: ${CPPFLAGS:=@CPPFLAGS@}
: ${LDLIBS:=@LDLIBS@}
: ${LDFLAGS:=@LDFLAGS@}

mkdir -p $(dirname $target)
$CC $CFLAGS $CPPFLAGS $LDFLAGS $source $LDLIBS -o $target >$target.compiler 2>&1 \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
