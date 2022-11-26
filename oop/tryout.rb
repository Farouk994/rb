# :TODO:

area_codes = {
    "london" => "454",
    "newyork" => "124",
    "tokyo" => "830",
    "ottawa" => "340",
    "orlando" => "762",
    "seattle" => "590",
    "los angeles" => "215"
}
# each_key - prints only one key if you use return 
# each - prints all keys and values

# get all keys / cities
def get_keys(hash)
  hash.each do |key|
    puts key
  end
end

# get city name from user input
def get_city_names(hash, city)
  hash.each_key do |key|
    if key == city
      return "You've chosen #{key}"
    end
  end
  "Something is wrong, and it's on your end!"
end

def get_area_codes(hash, code_from_hash)
  hash.each do |k,v| 
    if k == code_from_hash
      return "Area code for #{k} you chose is for #{code_from_hash}"
    end
  end
  "invalid"
end

# :FIXME:
# answer = gets.chomp
# get city from user input
# puts city_answer = get_city_names(area_codes,answer)

# get area code from user input
# puts code_answer = get_area_codes(area_codes,answer)

# :TODO:
users = [
  {:username => "Far", :password => "pass1"},
  {:username => "Ali", :password => "pass2"},
  {:username => "Ben", :password => "pass3"},
  {:username => "Sam", :password => "pass4"}
]

def authenticate_user(user_name,user_password,hash_users)
  hash_users.each do |user|
    if user[:username] == user_name && user[:password] == user_password
      return "Welcome #{user[:username]} to our site!"
    end
  end
  "Invalid Credentials"
end

puts "Enter Username below :"
enter_username = gets.chomp

35.times { print "-" }
puts
puts "Enter Password :"
enter_password = gets.chomp

puts answer = authenticate_user(enter_username,enter_password, users)
