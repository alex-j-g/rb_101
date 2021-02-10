# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greeting[:a]
informal_greeting << 'there'

puts informal_greeting
puts greetings

# "hi there", because informal_greeting when initalized is pointing to the original object at greetings[:a] and when we use the string method "<<" we modify the object that both greetings and informal_greeting point towards

#we could initialize informal_greeting with a reference to a new object containing the same value by informal_greeting = greetings[:a].clone.
#we can use string concatenation, informal_greeting = informal_greeting + ' there', which returns a new String object instead of modifying the original object.
