require_relative 'authModule'

# associate crud with class so that class has access to methods in module

class Register 
  # include module inside our class, 
  # allows functionality associated with module
  include Crud
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

student1 = Register.new("Ali","Doe","ali@gmail.com","15hht554")
student2 = Register.new("Mariam","Doe","mariam@gmail.com","45uuk4b2b")

hashed_pass = student1.create_hash_password(student1.password)
puts hashed_pass