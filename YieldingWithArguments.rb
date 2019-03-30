def speak_the_truth
  yield "Jordan" if block_given?
end

speak_the_truth { |name| puts "#{name} is hungry!"} #The "Jordan" string is going to pass itself to the block. The block
#is going to define it as the name block variable and then interpolate it in the string " is hungry"

#Can also yield a parameter, with the benefit being that you can change the names:

def speak_the_truth(name)
  yield name if block_given?
end

speak_the_truth("Jordan") { |name| puts "#{name} is not hungry"} #remember the block is not the same thing as the argument - "Jordan" is the argument"
