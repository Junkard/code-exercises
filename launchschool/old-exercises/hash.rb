# Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only siblings' names into a new array.
family = {  
    uncles: ["bob", "joe", "steve"],
    sisters: ["jane", "jill", "beth"],
    brothers: ["frank","rob","david"],
    aunts: ["mary","sally","susan"]
}
# My own Solution
siblings = (family[:sisters] + family[:brothers]).flatten
puts "#{siblings}"

# Solution
# immediate_family = family.select do |k, v|
#     k == :sisters || k == :brothers
# end
# arr = immediate_family.values.flatten
# p arr


puts "----------------------------"
# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
# My own Solution
puts "'merge' is indestructable while 'merge!' is destructable which affects the original value"

# Solution
puts "The difference is merge! modifies permanently, while merge does not."
cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                  # => {:name=>"whiskers"}
puts weight               # => {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                  # => {:name=>"whiskers", :weight=>"10 lbs"}
puts weight               # => {:weight=>"10 lbs"}


puts "----------------------------"
# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
# My Own Solution
grades = {
    math: 96,
    science: 90,
    english: 92,
    programming: 99,
    oop: 96
}
# grades.each do |key, value|
#     puts "#{key}"
# end
# grades.each do |key, value|
#     puts "#{value}"
# end
grades.each do |key, value|
    puts "#{key} = #{value}"
end

# Solution
# opposites = {positive: "negative", up: "down", right: "left"}
# opposites.each_key { |key| puts key }
# opposites.each_value { |value| puts value }
# opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }


puts "----------------------------"
# Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]


puts "----------------------------"
# What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.
puts person.fetch(:occupation)
if person.value?("Bob")
    puts "Got it!"
else 
    puts "Nope!"
end


puts "----------------------------"
# Given the following code... What's the difference between the two hashes that were created?
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
puts my_hash
puts my_hash2
puts "first one is symbol x and the second one is string variable"


puts "----------------------------"
# If you see this error, what do you suspect is the most likely problem?
puts "NoMethodError: undefined method `keys' for Array"
puts "A. We're missing keys in an array variable."
puts "B. There is no method called keys for Array objects."
puts "C. keys is an Array object, but it hasn't been defined yet."
puts "D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist."
puts "B is the answer"