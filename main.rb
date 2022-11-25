# Variable
greeting = "Welcome to this page"
# p greeting

# ////////////////////////////////////////////////////

# functions
def say_hello(g)
    puts "#{g} Tanny"
end

# say_hello greeting

# ////////////////////////////////////////////////////

# FIXME: Strings

# TODO:  String concatenation
first_name = "Mash"
last_name = "Hussein"
# puts first_name + " " + last_name

# - String Interpolation
# puts "#{first_name} and my last name is #{last_name}"

# TODO: Methods
theme = "Welcome to the jungle where the lion is the jungle"
puts theme.sub("the jungle","Utopia") # Only changes one occurence
puts theme.gsub("the jungle","Utopia") # Only changes occurences globally within the string

# TODO: Variable Assignment
# In ruby a variable is always pointing to another variables locaiton in memory  but not the value itself, 
# so when the value changes it will always point to that same spot with original value

# TODO: Escaping
'How is your day 'Sir'?' => "How is your day 'Sir'?"
greet = 'How is your day \'Sir\'?'
puts greet

# TODO: Get user input
puts "What is your name"
name = gets.chomp  # will only return a string
puts "Welcome to Utopia #{name}!"

puts "What a number that multiplies by 2?"
input = gets.chomp # chomp returns a string
puts input * 2 # will return string concatenation 
puts input.to_i * 2 # more safer as it will convert the original inout if its a number into a string .

# TODO: Analyzer Program
puts "Enter your first name"
first_n = gets.chomp
puts "Enter your last name"
last_n = gets.chomp
full_n = first_n + " " + last_n
puts "Your first and last name is #{full_n}"
puts "When reversed, your name is #{full_n.reverse!}"
puts "Length for your name is #{full_n.length}"
# ////////////////////////////////////////////////////
# 







# ////////////////////////////////////////////////////






# ////////////////////////////////////////////////////








# ////////////////////////////////////////////////////












# ////////////////////////////////////////////////////








# ////////////////////////////////////////////////////






# ////////////////////////////////////////////////////







