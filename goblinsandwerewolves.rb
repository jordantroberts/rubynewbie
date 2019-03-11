game_number = 1

while true do

  puts "You are facing forward. You can type 'forward', 'left' or 'right' to move"
  dir = gets.chomp
  if dir == "right"
    puts "you were killed by a goblin"
    break
  elsif dir == "left"
    puts "you were killed by a werewolf"
    break
  elsif dir == "forward"
    if game_number == 2
      puts "Yay you win!"
      break
    end

    game_number += 1

  end
end
