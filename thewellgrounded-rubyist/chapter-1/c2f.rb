print "Hello. Please enter a Celsius value: "
celsius = gets.to_i
fahrenheit = (celsius * 9 / 5) + 32
print "The result is: "
print fahrenheit
puts "."

# ruby -cw c2f.rb
# -c --> check for syntax error
# -w --> activate a higher level of warning