require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

users = [
  { 
    :username => "ali", 
    :password => "pass1", 
    :isVerfified => true,
    :city => "Uganda"
  },
  { 
    :username => "john", 
    :password => "pass2", 
    :isVerfified => false,
    :city => "Tokyo"
  },
  { 
    :username => "peter", 
    :password => "pass3", 
    :isVerfified => true,
    :city => "Seattle"
  }
]

def create_hash_password(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
 BCrypt::Password.new(password)
end

myPass = "my freaking password"
# puts create_hash_password(myPass);

def create_secure_users(user_list)
  user_list.each do |user_record|
    user_record[:password] = create_hash_password(user_record[:password])
  end
  user_list
end

# create new users array with new password
new_users = create_secure_users(users)
# puts new_users

def authenticate_user(username,password,user_list)
  user_list.each do |user|
    if user[:username] == username && verify_hash_digest(user[:password] == password)
      return user
    end
  end
  "Invalid Credentials"
end

puts "Enter Username for the programme"
userName = gets.chomp
35.times { print "-" }
puts
puts "Password :"
passWord = gets.chomp

puts confirm = authenticate_user(userName, passWord, users)