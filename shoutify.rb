#Define a method on string instances, called shoutify.
#This method should return the string text in uppercase,
#with an extra exclamation mark on the end.
#In other words, "hello world".shoutify should return "HELLO WORLD!".

class String
  def shoutify
    return self.upcase + "!"
  end
end

puts "hello".shoutify
