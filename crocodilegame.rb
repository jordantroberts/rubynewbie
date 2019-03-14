# Write a game where the player swims down a river infested with
# crocodiles.  The game should:
# * Use the `river` variable that defines the river (see code below).
#   * `-`: clear water.
#   * `C`: crocodile.
#   * The first five characters represent the first part of the river.
#     The second five characters represent the second part of the
#     river.  And so on.
# * Define the player as one character wide.
# * Start the player at the central position of the first part of the
#   river.
#   * e.g. `C-P--`.
# * Each turn:
#   * Check to see if the player is in the same position as a
#     crocodile.  If they are, `puts` `You were eaten.' and stop the
#     program.
#   * `puts` the whole river.  Include a `P` where the player is.
#   * Ask the player if they want to go to left, right or neither.
#     The player enters `left`, `right` or `neither`.
#   * Make the player float down the river by one river part (one line
#     of digits).  Move them to the left, the right, or keep them
#     where they are.
# Print `You survived!` if the player makes it past all parts of the
# river without hitting a crocodile.
#

river = '-----,--C--,CC-CC,CC-CC' #define a river
# player = "P"
playerposition = 2 #player will be in the center
turn = 0 #which go it is, i.e. which section of the river. I want to turn the river into an array, so this will be the start i.e. index 0

while turn <= 3 #as there are only (index) 3 sections
  river_array = river.split(',') #splitting the river into the sections
  if river_array[turn][playerposition] == 'C'#for each section if the position of the player is on a crocodile, loses the game
    puts "You were eaten"
    break
  else
    river_array[turn][playerposition] = "P" #if not eaten, the position is updated to read 'P'
  end
  puts river_array
  if turn == 3 #last go - wins
    puts "You survived!"
    break
  else
    puts "Pick a direction left, right or neither"
    dir = gets.chomp
    if dir == "right"
      playerposition += 1
    elsif dir == "left"
      playerposition -= 1
    elsif dir == "neither"
      playerposition
    end
  end
  turn += 1 #going through the river array
end
# * Note: To stop the game when the user is eaten or survives the
#   whole river, don't use `exit` to quit the program because this
#   will break the automated tests.  To exit a while loop early, use
#   the `break` keyword.
#
# * Note: You can assume the player will never move outside the
#   boundary of the river when they choose left and right.  You can
#   also assume the player will always enter either `left`, `right` or
#   `neither`.
#
# * Example output:
#   ```
#   --P--
#   --C--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   left
#   -----
#   -PC--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   right
#   -----
#   --C--
#   CCPCC
#   CC-CC
#   Type left, right or neither
#   neither
#   -----
#   --C--
#   CC-CC
#   CCPCC
#   Type left, right or neither
#   neither
#   You survived!
#   ```

# river = "-----,--C--,CC-CC,CC-CC"
