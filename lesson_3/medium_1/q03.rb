#Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

#Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

#my answer:
def factors(number)
   divisor = number
   factors = []
   loop do
     if number == 0 || number < 0
       break
     else factors << number / divisor if number % divisor == 0
       divisor -= 1
       break if divisor == 0
     end
   end
   factors
 end

 #given Answer
 while divisor > 0 do
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end

# Bonus 1
# What is the purpose of the; number % divisor == 0 ?
# answer Bouns 1; is a conditiopnal to check if number / divisor has no remainder and if it has no remainder it will add that divisor to the factors array.

# Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# Answer Bouns 2; Line 8 is there to count down the divisor to collect all intergers for the factor array. and the last "factors" is there so the method will return the results if left out the method would return nil.(aka explicit return statement)
