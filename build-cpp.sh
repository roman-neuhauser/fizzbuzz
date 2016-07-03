source=$1
target=$2

: ${CXX:=@CXX@}
: ${CXXFLAGS:=@CXXFLAGS@}
: ${CPPFLAGS:=@CPPFLAGS@}
: ${LDLIBS:=@LDLIBS@}
: ${LDFLAGS:=@LDFLAGS@}

mkdir -p $(dirname $target)
$CXX $CXXFLAGS $CPPFLAGS $LDFLAGS $source $LDLIBS -o $target >$target.compiler 2>&1 \
|| {
  ex=$?
  cat $target.compiler
  exit $ex
}
