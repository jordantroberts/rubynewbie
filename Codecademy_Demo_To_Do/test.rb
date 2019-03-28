File.open("text_list.txt").each do |item|
  puts item
end

File.open("text_list.txt","a") do |line| #a for append
  line.puts "\r" + "cook dinner"
end

#\r is an escape character in Ruby meaning return - so new item will add on a new line. 
