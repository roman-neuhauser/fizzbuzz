// mandatory exhaustive pattern matching with
// the switch statement puts Apple's Swift in
// somewhat better light than trivial.swift

func fizzbuzz (n: Int) -> String
{
  let m3 = n % 3, m5 = n % 5
  switch (m3, m5) {
    case (0, 0) : return "FizzBuzz"
    case (0, _) : return "Fizz"
    case (_, 0) : return "Buzz"
    default     : return String(n)
  }
}

for n in 1..<101 {
  print(fizzbuzz(n))
}
