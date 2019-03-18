class Person
  def give_a_name(name)
    @my_name = name
  end

  def introduce
    return "Hello, my name is " + @my_name
  end
end

woman = Person.new
woman.give_a_name("Jordan")
puts woman.introduce
