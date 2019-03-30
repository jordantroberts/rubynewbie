def custom_each(array)
  i = 0
  while i < array.length
    yield array[i] #going through each position in the array
    i += 1 #make sure you increment to avoid infinite loop
  end
end

names = ["Steve", "Tina", "Jordan", "Amy"]
numbers = [59, 56, 26, 24]

custom_each(names) { |name| puts "The length of #{name} is #{name.length}"}
custom_each(numbers) { |num| puts "The square of #{num} is #{num ** 2}"}

#Therefore can use the yield keyword to avoid writing 2 separate methods for iteration.
#All that we modify is the block that we give to the method - flexible and versatile. 
