class Monster

  def legs=(number_of_legs)
    @number_of_legs = number_of_legs
  end

  def walk
    return "I'm walking on my " + @number_of_legs.to_s + " legs"
  end

  def add_legs
    @number_of_legs += 1
  end
end

  monster = Monster.new
  monster.legs = 4
  puts monster.walk
  monster.add_legs
  puts monster.walk
