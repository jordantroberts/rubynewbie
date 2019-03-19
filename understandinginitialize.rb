class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}"
  end
end

phone = Gadget.new #Whenever a new object is created with the .new class method on Gadget,
#the initialize method automatically will run and thus phone and laptop are going to be set
#with 3 initial instance variables, completely separate from each other.
puts phone.inspect
p phone  #means the same as line above

laptop = Gadget.new
p laptop
