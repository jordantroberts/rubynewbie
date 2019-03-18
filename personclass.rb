class Person #define a Person class with some methods
  def name=(name)
    @name = name
  end

  def introduce
    return "Hello, my name is " + @name
  end
end

woman = Person.new #assign a new instance of Person to the variable 'woman'
woman.name=("Jordan")
puts woman.introduce

#Methods that set object state, like 'name=' above are called SETTERS.
#THEY SET OBJECT STATE USING AN INSTANCE VARIABLE
