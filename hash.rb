simple_hash = { "a" => 1, "b" => 2, "c" => 3 }
details = {"name" => "ali", "age" => 15}
new_details = {name: "Benson", age: 78, family: "Rizzuto"}
 details["name"]
 simple_hash["b"]

my_new = {a: 1, b: 2, c: 3} # will return symbols :a 
my_new #{:a=>1, :b=>2, :c=>3}
my_new[:a] # will return value of a
my_new.keys # will only return keys 
my_new.values # returns an array of values

new_details.each do |key, value|
    "#{key} ==> The value for key is #{key.class} and the value is #{value.class}"
end

myHash = { a: 1, b: 2, c: 3, d: 4, e: 5 }
myHash[:f] = "Mosh" # will add new element at end of hash
 myHash
myHash[:c] = 15 # will replace value in hash with different/new value
 myHash

# myHash.each { |key, value| p "#{key} ===> #{key.class} #{puts} #{value} ===> #{value.class}" }

 myHash.select { |k, v| v.is_a?(String)} # checks for values in a hash that is a string

 myHash.each {|k, v| v.is_a?(String)} # will loop through all values in a hash and returns a check on each value

 myHash.select { |k, v| v.is_a?(String) } # will print key and its value which is a string

# p myHash.is_a?(String)

p myHash.each {|k, v| myHash.delete(k) if v.is_a?(String)} # will return new hash without the key that was deleted



