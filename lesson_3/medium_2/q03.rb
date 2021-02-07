# Let's call a method, and pass both a string and an array as arguments and see how even though they are treated in the same way by Ruby, the results can be different.
#
# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# my_array will now be ["pumpkins", "rutabaga"]; because "<<" "shovels" in a new element into the array, and since the method is pointing to the same oject as my_array with an_array_param the originall my_array reflects that change
#my_string will not change because inside the method when the reassignment operation happens ("+=") Ruby creats a new String object and id, so a_string_param is now pointing to a diferent object than my_string and my_string is not changed.
#Ruby is passing arguments by "value" and is being passed through the method as a reference to an object ( string object, and array object) 
