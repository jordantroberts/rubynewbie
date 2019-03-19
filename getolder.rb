class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hello, I am " + @name + " and I am " + @age.to_s + " years old!"
  end

  def get_older
    @age += 1
  end
end

jordan = Person.new("Jordan", 26)
puts jordan.introduce
jordan.get_older
puts jordan.introduce
