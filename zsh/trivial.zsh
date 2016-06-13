#!/usr/bin/zsh -f

# zsh has become my default language choice lately.
# it's been my interactive shell for the past 15+ years
# (hand-knitted .zshrc, no OMZ or similar in sight)
# and i woke up only recently (2014), see
# https://github.com/roman-neuhauser/anarchinst

for i in {1..100}; do
  str=
  (( i % 3 )) || str+=Fizz
  (( i % 5 )) || str+=Buzz
  print ${str:-$i}
done
