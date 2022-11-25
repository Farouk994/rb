class Course 
  # will give us both getter and setters
  # takes in identities and makes them available
  attr_accessor :first_name, :f_name, :last_name, :email
  
  # this will only allow the getter functionality but not setter
  # attr_reader :password
  # can only be used to read this property

  # these are identities of a class
    # @first_name
    # @f_name
    # @last_name
    # @email
    # @password

    # initialize method, 
    # when you call class, this method runs and sets the values
    def initialize(firstName,lastName,email)
      @first_name = firstName
      @last_name = lastName
      @email = email
      # @password
    end

    # # this works as a method(setting attribute)
    # def first_name(name)
    #  @first_name = name
    # end

    # # getter(accessing attribute)
    # def f_name=(name)
    #  @f_name = name
    # end

    # def f_name(name)
    #  @f_name = name
    # end

    # used if you use attr reader
    # def set_password
    #   @password = "123456789"
    # end

    # def to_s
    #  "First name:#{@first_name}"
    # end

    def to_s
     "First Name: #{@first_name}, last_name: #{@last_name},email: #{@email}"
    end
end

# mash = Course.new
student1 = Course.new("mash","ali","mash@email.com")
student2 = Course.new("benzz","peka","benz@email.com")
puts student1
puts student2
student1.last_name = student2.last_name
puts "Something has been altered"
puts student1
# puts mash
# mash.first_name("Lee")

# this doesn't work as a setter, hence when you try
# to access first name
# mash.first_name ="Ali"

# you can pass in string to pass instance var value in that
# string
# puts mash.first_name("Ali")

# this is a setter type notation
# def first_name=(name)
  #  @first_name = name
# end
# mash.first_name ="Ali"
# puts mash
# mash.email = "mash@email.com"
# mash.first_name = "Mashur"
# mash.last_name = "Ali"
# mash.set_password

# puts mash.email
# puts mash.first_name
# puts mash.last_name
# puts mash.password

# puts "The name is #{mash.f_name("Ali")}";


# dash = Course.new
# dash.f_name ="door" # this is a setter method
# puts dash

# getter, works when you use a setter method to update an attribute 
# dash.f_name

# puts dash

