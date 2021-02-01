#Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.

#Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

#How would you fix this so that it works?

#answer
#initial limit variable is outside of the scope of the method. you can make it work if you put the limit = 15 before the while staement but will not be easily changed if the limit needs to change,  but to be able to easily modify the lmit amount can make limit an additional argument to fib method and pass it in when called.
