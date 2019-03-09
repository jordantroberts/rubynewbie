#We can use rand to, for example, write a simple dice game. (Game! You're probably going to need a loop of some sort.) The rules are:
#If I roll higher than my opponent, I win.
#Let's agree now that the program returning false means 'I lose', and true means 'I win'.
#Write the dice game as above.
#Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
#Upgrade the game once more: now we play several rounds for each game. The first player to win two rounds wins the game. (Still with two dice each.)


#player_1 = 1 + rand(6)
#player_2 = 1 + rand(6)



#while true do
  #puts player_1
  #puts player_2

#if player_1 > player_2
  #break
#elsif player_2 > player_1
  #break
#else break
#end
#end



  player_one_score = 0
  player_two_score = 0

while player_one_score < 2 && player_two_score < 2 do
    roll_p1 = 1 + rand(6)
    puts "I scored #{roll_p1}"
    roll_p2 = 1 + rand(6)
    puts "My opponent scored #{roll_p2}"

  if roll_p1 > roll_p2
    player_one_score += 1
  elsif roll_p2 > roll_p1
    player_two_score += 1
  end
end
  if player_one_score > player_two_score
    puts "I win"
  else
    puts "I lose"
  end
