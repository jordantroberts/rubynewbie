# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.

first_num = 0
second_num = 1
new_num = 0
puts first_num
puts second_num
18.times {
  new_num = first_num + second_num
  puts "#{new_num}"
  first_num = second_num
  second_num = new_num
}
