# do you want to look at area code
# showCities
# prompt : areacode
# will display city
# exit programme 

dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

# p dial_book.to_a

# p dial_book

def get_city_names(somehash,city)
  somehash.each_key do |key|
   if key == city
    return "You have choosen #{key}"
   end
  end
 "Something went wrong, please try again"
  
end

# p get_city_names(dial_book)

def get_area_code(somehash,key)
 somehash.each do |k,v|
  if k == key
    return v
  end
 end
 "Invalid"
end

# puts get_area_code(dial_book, "orlando")

loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  70.times { print "-" }
  puts
  puts "Which city would like to start with?"
  70.times { print "-" }
  puts
  city = gets.chomp
  70.times { print "-" }
  puts
  puts verifyCity = get_city_names(dial_book, city)
  70.times { print "-" }
  puts
  # break if city != verifyCity
  puts "Would you like to find out the area code for #{city.upcase}?(Y/N)"
  input = gets.chomp.downcase
  break if input != "y"
  70.times { print "-" }
  puts
  puts "Alrighty! lets get your area code"
  70.times { print "-" }
  puts
  puts "#{city.upcase} has an area code of #{get_area_code(dial_book,city)}"
  70.times { print "-" }
  puts
  puts "Press C to continue and any key to exit"
  log = gets.chomp.downcase
  break if log != "c"
end

