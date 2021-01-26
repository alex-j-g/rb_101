#Question 4

#The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

#What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1) # =>2
#will delete variable at index 1, and return that value.
# now numbers = [1,3,4,5]
numbers.delete(1) # => 1
#will delete everthing equal to the object given as a n argument, will return whats been deleted or nil if nothing matches
#no numbers = [2,3,4,5]
