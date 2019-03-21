cubes = Proc.new { |number| number ** 3} #a proc is like a saved block - will save repeating it

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_cubes = a.map(&cubes) #the ampersand is needed as it shows you're passing in a proc, not just any variable
b_cubes = b.map(&cubes)
c_cubes = c.map(&cubes)

p a_cubes
p b_cubes
p c_cubes

#Buys us lots of flexibilty. E.g. what if tomorrow we are told that a and c can remain cubed but b must be squared:
#We can define a new Proc - squares:

cubes = Proc.new { |number| number ** 3}
squares = Proc.new { |number| number ** 2}

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_cubes, b_cubes, c_cubes = [a, b, c].map { |array| array.map(&cubes)} #creates a nested array of a, b, c, then iterates over the arrays, then the individual elements.
#This is a neater way of doing the below:
#a_cubes = a.map(&cubes)
#b_squares = b.map(&squares)
#c_cubes = c.map(&cubes)

p a_cubes
p b_cubes
p c_cubes



#Procs can also be used with boolean values:

ages = [10, 60, 83, 30, 43, 25]

is_old = Proc.new { |age| age > 55 }

p ages.select(&is_old) #=> [60, 83]
