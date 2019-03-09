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
  fib(n - 1) + fib(n - 2) #The value of the nth term in Fibonacci series is equal to the sum of the previous two terms.
  #E.g. if fibonacci(n) = 21, the value of n represents an ordered place value, an index. If we look at fibonacci as an array:
  #[0, 1, 1, 2, 3, 5, 8, 13, 21], 21 is the 8th index of the array.
  #Fibonacci(8) = 21 = Fibonacci(7) + Fibonacci (6) = 13 + 8.
end
(0..19).each { |n| puts fib(n) }

#Pseudo-coding it
#input n
#if n = 1, we want to output 1
#if n = 2, we want to output 1
#if n > 2, we want to output the sum of the previous 2 values
#print the output of n
