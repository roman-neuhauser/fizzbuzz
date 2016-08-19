class Switch {
  static function main() {
    for (i in 1...101)
      Sys.println(switch [i % 3, i % 5] {
        case [0, 0] : "FizzBuzz" ;
        case [0, _] : "Fizz"     ;
        case [_, 0] : "Buzz"     ;
        default     : i          ;
      });
  }
}
