#Shorten this sentence:
advice = "Few things in life are as important as house training your pet dinosaur."

#...remove everything starting from "house".

#Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".
advice.slice!(0..38)
advice.slice!(0, advice.index('house'))

#As a bonus, what happens if you use the String#slice method instead?

#Answer
#it will return a new array of the returned value of slice, and the original array advice will be left unchanged.
