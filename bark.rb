
class Dog
  def bark
    return "Woof Woof"
  end

  def colour= (colour) #define a  new method, 'colour ='. It takes one argument, which we named colour.
    @colour = colour #saving the colour property, passed as an argument to the colour= method, to the object state.
    #to save things to the object state, we use an instance variable.
    #in line 2, we set up a new name @colour, and assign it to the colour parameter of the colour method
  end

  def observe
    return "You see a " + @colour + " dog"
  end
end

bailey = Dog.new
puts bailey.bark
puts bailey.colour = "blue roan"
puts bailey.observe
