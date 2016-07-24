int main ()
{
  for (int i = 1; i < 101; ++i) {
         if (i % 15 == 0) stdout.printf("FizzBuzz\n");
    else if (i %  3 == 0) stdout.printf("Fizz\n");
    else if (i %  5 == 0) stdout.printf("Buzz\n");
    else                  stdout.printf("%d\n", i);
  }
  return 0;
}
