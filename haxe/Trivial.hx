class Trivial {
  static function main() {
    for (i in 1...101)
      if (i % 15 == 0) Sys.println("FizzBuzz"); else
      if (i %  3 == 0) Sys.println("Fizz");     else
      if (i %  5 == 0) Sys.println("Buzz");     else
                       Sys.println(i);
  }
}
