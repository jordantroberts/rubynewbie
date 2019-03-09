#We can use rand to, for example, write a simple dice game. (Game! You're probably going to need a loop of some sort.) The rules are:
#If I roll higher than my opponent, I win.
#Let's agree now that the program returning false means 'I lose', and true means 'I win'.
#Write the dice game as above.
#Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
#Upgrade the game once more: now we play several rounds for each game. The first player to win two rounds wins the game. (Still with two dice each.)


#Step One
#If you want to keep track of a value during a loop, you need to declare it outside of the loop
player_one_score = 0 #my score
player_two_score = 0 #my opponent's  score

#set up the loop to keep playing util one of players scores 2 (i.e. one gets higher than the other)
while player_one_score < 1 && player_two_score < 1 do

#roll them dice...
    roll_p1 = 1 + rand(6)#my dice roll
    puts "I scored #{roll_p1}"
    roll_p2 = 1 + rand(6) #opponent's dice roll
    puts "My opponent scored #{roll_p2}"

#update the scores
  if roll_p1 > roll_p2
    player_one_score += 1
  elsif roll_p2 > roll_p1
    player_two_score += 1
  end
  #end of while loop, play again
end

  if player_one_score > player_two_score
    puts "I win"
  else
    puts "I lose"
  end



#Step Two Upgrade - two 6 sided dice each

player_one_score = 0
player_two_score = 0

while player_one_score < 1 && player_two_score < 1 do
    roll_p1 = 1 + rand(12) #now there are two dice, so have upgraded 6 to 12
    puts "I scored #{roll_p1}"
    roll_p2 = 1 + rand(12)
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

#Step 3 Upgrade - we play several rounds for each game and the first person to win two rounds wins the game, still with 2 dice each

player_one_score = 0
player_two_score = 0

while player_one_score < 2 && player_two_score < 2 do #Upgrade: until someone has won two rounds
    roll_p1 = 1 + rand(12) #now there are two dice, so have upgraded 6 to 12
    puts "I scored #{roll_p1}"
    roll_p2 = 1 + rand(12)
    puts "My opponent scored #{roll_p2}"

  if roll_p1 > roll_p2
    player_one_score += 1
  elsif roll_p2 > roll_p1
    player_two_score += 1
  end
end
#One of us has scored two so we are out of the while loop. Scores output:
  if player_one_score > player_two_score
    puts "I win"
  else
    puts "I lose"
  end
