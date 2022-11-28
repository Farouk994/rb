require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

# works as a module to authenticate users, functionality
# which verifies user and response is sent down to any __FILE__
# or function that  requests it 

# convert this into module
module Crud
  
 require 'bcrypt'
  
  # this is just to check if the module got loaded correctly
  # when its run
 puts "Module Crud Activated"
  
 def Crud.create_hash_password(password)
   BCrypt::Password.create(password)
 end

 def Crud.verify_hash_digest(password)
   BCrypt::Password.new(password)
 end

 myPass = "my freaking password"
 # puts create_hash_password(myPass);

def Crud.create_secure_users(user_list)
  user_list.each do |user_record|
    user_record[:password] = create_hash_password(user_record[:password])
  end
  user_list
end

# create new users array with new password
# new_users = create_secure_users(users)
# puts new_users

def Crud.authenticate_user(username,password,user_list)
  user_list.each do |user|
    if user[:username] == username && create_hash_password(user[:password] == password)
      return user
    end
  end
  "Invalid Credentials"
end
end

# puts "Enter Username for the programme"
# userName = gets.chomp
# 35.times { print "-" }
# puts
# puts "Password :"
# passWord = gets.chomp

# puts confirm = authenticate_user(userName, passWord, users)