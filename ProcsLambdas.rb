#Differences between lambdas and procs (other than these 2, they function basically the same):

#Lambdas will throw an error when wrong number of arguments but procs don't care about no. of arguments they receive

some_proc = Proc.new { |name, age| "Your name is #{name} and your age is #{age}"}

p some_proc.call("Jordan", 26)
p some_proc.call("Jordan")
p some_proc.call() #Doesn't matter that wrong number of arguments - will be "Your name is and your age is"

some_lambda = lambda {|name, age| "Your name is #{name} and your age is #{age}"}

p some_lambda.call("Jordan",26)
p some_lambda.call("Jordan") #you will get a wrong number of arguments given error


#One more difference between lambdas and procs and that is how they return values in methods:

def diet
  status = lambda {return "You gave in"} #remember you should never use the return keyword in a regular block, but remember that a proc / lambda not a regular block - they're RUBY OBJECTS
  status.call #call that lambda
  "You completed the diet" #this will still get reached, because the return keyword returned control back to diet.
end

p diet
#lambdas return control back to the method (so the diet method)
#So when we return the "You gave in" it will return control back to diet.
#And after it's called, diet will proceed and continue, will still reach line 4 and line 4 will be the final return value.

#With procs...

def diet
  status = Proc.new { return "You gave in"} #when we do a return from within a proc like this, within a method body, this return keyword will return for the ENTIRE METHOD, not just the proc. It will break out of here and the final return will be "You gave in". Never transfers control back.
  status.call #call that Proc from within the method
  "You completed the diet" #this won't be reached
end

p diet

#People tend to prefer lambdas for both of these reasons!
