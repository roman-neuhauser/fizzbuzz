#!/usr/bin/python3

# python used to be my favorite scripting language for
# moderately-sized programs (a few 100s to 1000s LoC).
#
# it never seemed like a good deal for really short
# scripts: they never stayed that short since
# the language is kinda high-brow and seems to take
# itself too seriously.
#
# it never felt like a good deal for sizable codebases
# either (dynamic typing), and dealing with a large
# high-profile codebase solidified my view.  unit tests
# are not a substitute for a compiler bitching about
# my type blunders.

for i in range(1, 101):
  s = ''
  if (i % 3 == 0): s += "Fizz"
  if (i % 5 == 0): s += "Buzz"
  print(s or i)
