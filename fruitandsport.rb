# Write a program that lists the names of people who all like a
# specific thing. It should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Ask the user to input a category value e.g. `kiwi`.
# * `puts` the names of each of the people who like the thing in the
#   category, one per line.
#
# * Example output:
#   ```
#   Enter what category to search
#   sport
#   Enter what value to search for
#   squash
#   Mary
#   Lauren
#   Govind
#   ```
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.  The user might enter a
# category value that no person has (e.g. `mango`).

people = [
  { :name => "Mary", :sport => "squash", :fruit => "blackberry" },
  { :name => "Lauren", :sport => "squash", :fruit => "orange" },
  { :name => "Isla", :sport => "weightlifting", :fruit => "banana" },
  { :name => "Sam", :sport => "cycling", :fruit => "orange" },
  { :name => "Govind", :sport => "squash", :fruit => "banana" },
  { :name => "Awad", :sport => "weightlifting", :fruit => "kiwi" },
  { :name => "Will", :sport => "cycling", :fruit => "blackberry" }
]

#Thinking was to sort everyone into the sports they liked and by the fruit they liked so I created two new hashes:

people_by_sport = {}
people_by_fruit = {}

people.each do |person| #I went through each person and for each person took a note of the sport that they played.
  sport = person[:sport]
  name = person[:name]

  if people_by_sport[sport] == nil #Check the sport hash and set 'sport' equal to an array containing the name of the person.
    people_by_sport[sport] = []
  end

  people_by_sport[sport].push(name) #By this time, sport DOES exist as a key of the hash, so pushed the person's name into that existing array.

end

people.each do |person| #did the same for fruits
  fruit = person[:fruit]
  name = person[:name]

  if people_by_fruit[fruit] == nil
    people_by_fruit[fruit] = []
  end

  people_by_fruit[fruit].push(name)

end

puts "Please enter a category" #asked for user's input
category = gets.chomp

if category == "sport"

  puts "Please enter a sport"
  value = gets.chomp

  if value == "squash" 
    puts people_by_sport["squash"]
  elsif value == "cycling"
    puts people_by_sport["cycling"]
  elsif value == "weightlifting"
    puts people_by_sport["weightlifting"]
  end
end

if category == "fruit"

  puts "Please enter a fruit"
  value2 = gets.chomp

  if value2 == "banana"
    puts people_by_fruit["banana"]
  elsif value2 == "orange"
    puts people_by_fruit["orange"]
  elsif value2 == "blackberry"
    puts people_by_fruit["blackberry"]
  elsif value2 == "kiwi"
    puts people_by_fruit["kiwi"]
  end
end
