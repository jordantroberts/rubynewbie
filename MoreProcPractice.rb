#Procs are like blocks and can be used anywhere a block can be used normally:

hi = Proc.new { puts "Hi there"}
hi.call #in comparison to a block, which is a temporary construct, a proc, as an object, can be called by itself. The call method can be used on proc objects and what it does is execute it by itself.
5.times(&hi)

def greeter
  puts "I'm inside the greeter method"
  yield
end

phrase =Proc.new do
  puts "Inside the proc"
end

greeter(&phrase) #Proc passed in as an argument, even though greeter method doesn't have parameters.


#Passing a Ruby method as a proc to another method:

p ["1", "2", "3"].map { |number| number.to_i}
# there is a shorter way to do this using procs:

p ["1", "2", "3"].map(&:to_i) # What we pass through the parameters is what we want to do to each element. So we want to convert every element to an integer. But "to_i" by itself doesn't mean anything.
#So, we have to convert to_i to a Proc.
#First of all we had to make it to a symbol to convert it to an actual object, as if it was just to_i Ruby would think it is some sort of variable.
#Secondly, we prefix it with the & - allows for the passing of a proc to a method.

#Other examples:
p [1, 2, 3].map(&:to_s)
p [1,2,3,4,5].select(&:even?)
p [1,2,3,4,5].reject(&:odd?)




#Methods with Proc Parameters:
def talk_about(name, &myproc)
  puts "Let me tell you about #{name}"
  myproc.call(name)
end
#define the procs
good_things = Proc.new { |name| puts "#{name} is a genius!"}
bad_things = Proc.new { |name| puts "#{name} is super annoying!"}

#call the method:
talk_about("Ben", &good_things) #we do need to prefix proc with &, although don't need to in the method body.
talk_about("My neighbour", &bad_things)
