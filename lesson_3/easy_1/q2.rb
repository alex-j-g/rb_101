#Question 2

#Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

    #1. what is != and where should you use it?
    #2. put ! before something, like !user_name
    #3. put ! after something, like words.uniq!
    #4. put ? before something
    #5. put ? after something
    #6. put !! before something, like !!user_name

#Answer:
# The "!" at the end of a method usally means that it mutates the caller but not always. Also is the "not" operator and will cange the boolean value to its opposite
#The "?" at the end of a method typically used in a boolean query but not always
# Both are part of the method name and do not know what the method does just by those characters
#? : terney operator for if...else

#1. "!=" operator means does not equal to. returns a boolean
#2. ! before something will change its boolean value to its opposite
#3. ! after usally a method would have a distructive nature to the caller
#4. syntax error
#5. NoMethodError
#6. !! before somthig will keep original boolean value
