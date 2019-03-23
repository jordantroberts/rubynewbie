# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.

def fib(n)
  return n if n < 2 #Allows us to weed out any n-values that would give us negative values. Fib(0) and fib (1) would give us negative values.
  fib(n - 1) + fib(n - 2)
end
(
#So if n = 5:
#fib(5)
#not lesss than 2 so goes to next bit
#fib(4) + fib(3) which just calls another method again so:
#fib(4) will be fib(3) + fib(2) and fib(3) will be fib(2) + fib(1)
#fib(3) = fib(2) + fib(1) and fib(2) = fib(1) + fib(0) etc
#fib(1) and fib(0) are both less than 2 so they return themselves.
#Work out the values going back up e.g. fib(2) will be fib(1) + fib(0) = 1


0..19).each { |n| puts fib(n) }
