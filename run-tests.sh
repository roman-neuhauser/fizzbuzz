expout="$1"; shift

for f in "$@"; do
  printf -- "%-30s" $f
  ./$f > $f.output 2>&1
  if diff -u $expout $f.output > $f.diff 2>&1; then
    printf -- "ok\n"
    rm -f $f.diff
  else
    printf -- "FAIL\n"
    failed="$failed $f"
  fi
done

if test -n "$failed"; then
  printf -- "\nthese implemantations failed:\n"
  for f in $failed; do
    printf -- "- %s\n  see %s\n  and %s\n" $f $f.output $f.diff
  done
  printf -- "\n"
  exit 1
fi
