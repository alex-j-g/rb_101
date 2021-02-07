# To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#now tables are flipped, Ruby is creating a new object for the array reassigment of an_array_param and no longer references the object array of my_array. While my_string and a_string_param are pointing to the  same object and the "<<" doesn't create a new object and variable (i.e. a_string_param like in the previous qustion)
