# Authenticator

# get user input
# - username , - password
# Incorrect password
# n to quit and other key to continue
# right password returns user object
# n to quit and other key to continue
# invalid crecentials and the forth time you're kicked out

# hash, branching, while loop

users = [
    {:username => "Far", :password => "pass1"},
    {:username => "Ali", :password => "pass2"},
    {:username => "Ben", :password => "pass3"},
    {:username => "Sam", :password => "pass4"}
]

def auth_user(username, password, listOfUsers)
  listOfUsers.each do |user|
    if user[:username] == username && user[:password] == password
      return "Welcome #{user[:username]} to this Programme"
    end
  end
  "Invalid Credentials"
end

# p users

puts "Welcome to the Authenticator"
35.times { print "-" }
puts 
print "Please provide your details to continue"
puts
35.times { print "-" }
puts

attempts = 1

while attempts < 4
  print "Username : "
  name = gets.chomp
  print "Password : "
  pwd = gets.chomp 
  authentication = auth_user(name, pwd, users)
  puts authentication
  puts "Press X to quit or any key to continue"
  input = gets.chomp.downcase
  break if input == "x"
  attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4
