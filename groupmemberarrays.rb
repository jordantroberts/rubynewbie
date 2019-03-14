# Write a program that puts people into groups.  It should:
# * Ask the user to enter the number of groups they want to create.
# * Ask for people's names, one at a time, until the user enters `stop`.
# * Grouping strategy
#   * As an example, imagine there are three groups.
#   * First person goes in the first group.
#   * Second person goes in the second group.
#   * Third person goes in the third group.
#   * Fourth person goes in the first group.
#   * Fifth person goes in the second group.
#   * etc.
# * Ask the user for the number of a group.
# * Print the people in that group, each separated by a comma and a
#   space.  Group numbers are "1-indexed".  This means that, if the
#   user enters `1`, the first group should be printed, not the second
#   group.
# * Keep on asking the user for group numbers until the user enters
#   `stop`.
#
puts "How many groups would you like?" #Asks the user for input
groupno = gets.chomp.to_i #user inputs a number e.g. 3

array = Array.new(groupno) { [] } #a new array is created. Creating it this way to create an array with separate objects: So if group number was 3: Array.new(3) {[], [], []}

puts "Names of group members?" #user then asked for the names of the group members
count = 0
while input_name = gets.chomp #loop begins
  if input_name != "stop" #the loop continues as long as the user does not enter "stop"

    puts "Names of group members?" #as long as the user doesn't enter stop, they're continually asked for names
    array[count] << input_name #counter used to access the arrays. So array[0] put in name, array [1] put in name, array [2] put in name.
    count += 1 #to move on to the next group in the array
    count = 0 if count == groupno #reset the counter to 0 if the array it is accessing = the group name. E.g. 3 groups. Will only be indexes 0, 1 and 2 for names to go into. If count gets to 3 (same as number of groups), start again at 0 and add names in there again.
  elsif input_name == "stop" #we don't want to end it if they put stop, or add stop as a name. So if they put in stop we start a nested loop as follows:

    while true do
      puts "Please say a group number and I'll tell you who is in the group" #asking for a group number
      n = gets.chomp #user inputs the number of the group
      if n == "stop" #whole program breaks if stop
        break
      elsif puts array[n.to_i - 1].join(", ") #if it's a number they have inputted, we print the array of names to the console. As the instructions state that the groups are 1 indexed, we -1. E.g. if they put in group 2, they will mean our group 1. We combine the names with a comma and a space with the .join.
      end #end of if/else
    end #end of nested while loop
    break
  end #end of earlier if else
end #loop ends

# * Example output
#   ```
#   Enter number of groups
#   3
#   Enter a name
#   Mary
#   Enter a name
#   Lauren
#   Enter a name
#   Awad
#   Enter a name
#   Govind
#   Enter a name
#   Isla
#   Enter a name
#   stop
#   Enter the number of a group to print out
#   1
#   Mary, Govind
#   Enter the number of a group to print out
#   2
#   Lauren, Isla
#   Enter the number of a group to print out
#   3
#   Awad
#   Enter the number of a group to print out
#   stop
#   ```
#
# * Note: You can assume the user will input an integer when asked how
#   many groups they want to create.  You can assume the user will
#   input integers for group numbers that exist when they are asked
#   for the number of a group to print out.
