puts"Hello, what's your name?"
name = gets.chomp
return puts name.upcase if name.chr == "S" || "s"
return puts "Hi #{name}"
end

#.chr gets the first character of the string referenced by 'name'. I am checking
#to see if it's equal to a string containing the text "S" or "s".

#Refactor with early returns along with one line conditionals. 'return' will stop
#an object from executing a procedure, and return whatever value you tell it to.
#Note that if/else syntax is also fine.

#Refactor string interpolation: #{} inside a string will allow you to execute
#a statement inside a string. The return value from the statement is concacendated into
#the surrounding string. 
