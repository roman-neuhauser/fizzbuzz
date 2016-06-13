#!/usr/bin/zsh -f

# this is not a particularly natural implementation,
# the goal is to showcase the rechecked fallthrough (;|)

for i in {1..100}; do
  str=
  case $(( (i%3 == 0) << 1 | (i%5 == 0) )) in
  3|2) str+=Fizz ;|
  3|1) str+=Buzz ;;
  esac
  print ${str:-$i}
done
