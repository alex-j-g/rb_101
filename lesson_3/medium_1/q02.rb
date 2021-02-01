#The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

#Why is this and what are two possible ways to fix this?

#answer: Intergers need to be converted to a string before it can be concatenated to another string.
puts "the value of 40 + 2 is " + (40 + 2).to_s
#or
puts "the value of 40 + 2 is #{40+2}" #with interpolation
