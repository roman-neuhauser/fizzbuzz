for i in 1..100:
  var fb = ""
  if i mod 3 == 0:
    fb.add "Fizz"
  if i mod 5 == 0:
    fb.add "Buzz"
  echo case fb
    of "": $i
    else: fb
