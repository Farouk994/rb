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

def authenticate_user(hash, u_name, u_password)
  hash.each do |user|
    if user[:username] == u_name && user[:password] == u_password
      # return "Welcome #{user[:user]}"
      return user
    end
  end
  "Invalid credentials"
end

puts "Enter Username for the programme"
userName = gets.chomp
35.times { print "-" }
puts
puts "Password :"
passWord = gets.chomp

puts confirm = authenticate_user(users, userName, passWord)