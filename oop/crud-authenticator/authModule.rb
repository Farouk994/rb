require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

# works as a module to authenticate users, functionality
# which verifies user and response is sent down to any __FILE__
# or function that  requests it 
# def Crud.method_name

# In front of all the method names we used a class reference, you can replace this or use self. in their place, that is how you reference class methods. The code in the main.rb file would still work if you use self.create_secure_users for example. This is a good opportunity for you to read up on the difference between "class methods" and "instance methods". We will see how to convert these into instance methods in the next video by using the module as a mixin for our student object.

# If you self on the method also works the same 
# Called a class method,
# def self.method_name

# convert this into module
module Crud
  
 require 'bcrypt'
  
  # this is just to check if the module got loaded correctly
  # when its run
 puts "Module Crud Activated"
  
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
# new_users = create_secure_users(users)
# puts new_users

def authenticate_user(username,password,user_list)
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