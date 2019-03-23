#Recursion is a method of solving a problem by breaking it down into smaller instances of the same problem:

def factorial(n)
  result = 1
  n.times do |i|
    result *= i + 1
  end
  result
end

puts factorial(5)

# Iteration 1 = 1 * 0 + 1 = 1
# Iteration 2 = 1 * 1 + 1 = 2
# Iteration 3 = 2 * 2 + 1 = 6
# Iteration 4 = 6 * 3 + 1 = 24
# Iteration 5 = 24 * 4 + 1 = 120

#Solved using recursion:

factorial(n) == n * factorial(n-1) #reduced the problem of calculating n! to a maller instance of the same problem (calculating n - 1 and multiplying by n)
#We can use this approach to rewrite the method:

def factorial(n)
  return 1 if n < 2
  factorial(n-1) * n
end

#factorial(5)
#factorial(5) 5 * the factorial of (5-1) 5 * factorial(4) = 5 * 24 = 120
#factorial(4) 4 * the factorial of (4-1) 4 * factorial(3) = 4 * 6 = 24
#factorial(3) 3 * the factorial of (3-1) 3 * factorial(2) = 3 * 2 = 6
#factorial(2) 2 * the factorial of (2-1) 2 * factorial(1) = 2 * 1 = 2
#factorial(1) will return 1 because of the base case.

#or even shorter

def factorial(n)
  n < 2 ? 1 : factorial(n-1) * n
end

#Such a method that calls itself to compute the result is called a recursive method.
#Since the method calls itself, it must always have at least one BASE CASE to avoid infinite loop.
#Therefore, on every invocation of a recursive function it should check whether the input parameters constitute a base case and
#then decide whether to call itself. For example, here the base case is n < 2. If that condition holds, the method
#will return 1 without calling itself. Otherwise, it calls itself with a different argument (n-1).
#It is crucial to simplify the problem (in this case simplifying it from factorial(n) to factorial (n-1) on every iteration, otherwise the recursive method will enter into an infinite loop)
