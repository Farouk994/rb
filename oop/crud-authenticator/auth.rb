# require crud file 
require_relative 'authPrac'

# # won't work if not in the same dir
# require 'crud'

# # how to make it work by requiring dir
# $LOAD_PATH << "."
# require 'crud'



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

hashed_users = Crud.create_secure_users(users)
# user_auth = Crud.authenticate_user()
puts hashed_users;