if !true
    # puts "heloo"
else
    # puts "Wrong"
end

condition = 450;
if condition > 48
    # puts true
else 
    # puts false
end

know = true
unknown = true
if know && unknown
    # puts true
else 
    # puts false
end

if know || unknown 
    # puts "This is true"
else 
    # puts "this is false"
end

name = "Aloi"
if name == "Ali"
    # puts "Welcome Ali"
elsif name == "Jim"
    # puts "Welcome Jim"
else 
    # puts "Welcome User" 
end 

# Calculator 
puts "Simple calculator to trick you"
25.times { print "--" }
puts 
puts "Enter Value"
input = gets.chomp.to_i
puts "You selected #{input}"
puts 
puts "Enter Value"
n_input = gets.chomp.to_i
puts "Another value is #{n_input}"
# puts "The answer is #{input % n_input}"
puts "Enter 1 for adding, 2 for multiplying and 3 for division"
user_entry = gets.chomp
if user_entry == "1"
    puts "You have choose to add, so #{input} plus #{n_input} will be #{input + n_input}"
elsif user_entry == "2"
    puts "You have choose to multiply, so #{input} times #{n_input} will be #{input * n_input}"
elsif user_entry == "3"
    puts "You have choose to divide, so #{input} divide by #{n_input} will be #{input.to_f / n_input.to_f }"
else 
    puts "Error occured, #{user_entry} is invalid, Please try again"
end
