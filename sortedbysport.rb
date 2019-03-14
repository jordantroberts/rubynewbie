#Group the array of hashes below into a hash, where each key of the hash is a sport, and each value of the hash is a list of names of people who play that sport.


players = [
  {:name => "Sam", :sport => "tennis" },
  {:name => "Mary", :sport => "squash" },
  {:name => "Ed", :sport => "tennis" },
  {:name => "Mark", :sport => "football" }
]

players_by_sport = {} #set up a new hash

players.each do |player| #go through the players
  sport = player[:sport] #for each player, name the sport that they play
  name = player[:name]

  if players_by_sport[sport] == nil #check the players_by_sport hash. if sport does not exist as a key on that hash, set 'sport' equal to an array containing the name of the playeer. Then move to the next player.
    players_by_sport[sport] = [ ]
  end
  # else #can get rid of this
    players_by_sport[sport].push(player[:name]) #Else, if sport DOES exist as a key on the hash, push the player's name into the array that already exists. Then go to next player.

end

puts players_by_sport
