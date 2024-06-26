# Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(number) ? "array is here" : "not"

puts "----------------------------"

# What will the following programs return? What is the value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
puts arr.to_s

arr = ["b", "a"]
arr2 = arr.product([Array(1..3)])
arr2.first.delete(arr2.first.last)
puts arr2.to_s

puts "----------------------------"

# How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]

# my solution
output = arr.flatten.select { |value| value == "example"}
# in exercise solution
# arr.last.first
# arr[1][0]

puts "----------------------------"

arr = [15, 7, 18, 5, 12, 8, 5, 1]

puts arr.index(5) # = looking for number that has a value of 5 inside array and count what place is it, so it will return number 3

# arr.index[5] # = ERROR

puts arr[5] # = count the array from index 0 to 5 and return what value is it, so 8 is the value


puts "----------------------------"
# What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]

print "a is: #{a}, b is: #{b}, c is: #{c ? c : "nil"} \n"

# You run the following code ... and get the following error message:

names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# because it shouldn't be names['margaret'] but it should be names[3]


puts "----------------------------"
# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.
top_five_games = ["mario brothers","excite bike","ring king","castlevania","double dragon"]
top_five_games.each_with_index do |val, idx|
    puts "#{idx}. #{val}"
end

array = [1, 2, 3, 4, 5]
array.each_with_index do |value, index|
    puts "#{index}. #{value}"
end


puts "----------------------------"
=begin
    Write a program that iterates over an array and builds a new array that is the result of
    incrementing each value in the original array by a value of 2. You should have two
    arrays at the end of this program, The original array and the new array you've created.
    Print both arrays to the screen using the p method instead of puts.
=end
old_array = [1,2,3,4,5,6,7,8,9]
new_array = []

old_array.each do |n|
    # new_array << n + 2
    # new_array.push(n + 2)
    new_array[new_array.length] = n + 2
end
puts new_array.to_s