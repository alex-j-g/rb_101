# Question 1
#What would you expect the code below to print out

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

#Answer:
#1
#2
#2
#3

#since .uniq does not mutate the caller when we call numbers 
#with puts we get the original array but in string form.
