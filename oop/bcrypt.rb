# Popular hashing algo is MD5 - Bcrypt uses it and adds salt to it to hash passwords
# 
# 

require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

# this creates hashed version of our password
my_password = BCrypt::Password.create("my password")
  #=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"
 
# puts my_password.version              #=> "2a"
# puts my_password.cost                 #=> 10
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false
# puts my_password

# comparing hashed password to as a new password to "my password"
my_password = BCrypt::Password.new("$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa")
# puts my_password == "my password"     #=> true
# my_password == "not my password" #=> false

# EXAMPLE 1
user_password = "the-Blue-Raven"

def create_hash_password(password)
  BCrypt::Password.create(password)
end

hashedPassword = create_hash_password(user_password);
# puts "This is your new hashed password ===> #{hashedPassword}";


# EXAMPLE 2
# if user enters a password call method to verify if password is correct
def verify_hash_password(password)
  BCrypt::Password.new(password)
end

new_password = verify_hash_password("fleenor")
puts new_password

# class School 
#  attr_accessor :name, :city, :phone,
#   :numStudents
#   def initialize(name,city,phone,numStudents)
#    @name = name
#    @city = city
#    @phone = phone
#    @numStudents = numStudents
#   end

#   def to_s
#    "Name:#{@name},
#     Location:#{@city},
#     Contact:#{@phone},
#     NumberOfStudents:#{@numStudents}
#     "
#   end

#   def update_name(name)
#    @name=name
#   end

#   def setter_user=(city)
#     @city=city
#   end
    
# end

# school1 = School.new("Central College","Seeta", 18007234578, 567);
# #puts school1;

# #school2 = School.new("Lubiri High","Rubaga",891384800,342);
# #puts school1.update_name("Kinaawa High");

# #puts school1;

# setterMethod = school1.setter_user = "Jamil HS"
# # puts "#{setterMethod} has been updated!";

# # puts school1;