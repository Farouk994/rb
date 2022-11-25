require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end


class Register 
  attr_accessor :first_name, :last_name, :email, :password

  def initialize(first,last,email,password)
     @first_name = first
     @last_name = last
     @email = email
     @password = password
  end

  def to_s
    "First Name: #{@first_name}, 
    Last Name: #{@last_name}, 
    email: #{@email}, 
    password: #{@password}
    \n
    "
  end

end

my_password = Bcrypt::Password.create("my_password")
puts my_password

student1 = Register.new("Ali","Doe","ali@gmail.com","15hht554")
student2 = Register.new("Mariam","Doe","mariam@gmail.com","45uuk4b2b")

puts student1
puts student2

# bcrypt uses a hashing algo called MD5
