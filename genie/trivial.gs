[indent=2]

init

  for var i = 1 to 100
    if i % 15 is 0
      print "FizzBuzz"
    else if i % 3 is 0
      print "Fizz"
    else if i % 5 is 0
      print "Buzz"
    else
      print "%d", i
