#In this hash of people and their age,

ages = { "herman" => 32, "Lilly" => 30, "Grandpa" => 402, "Eddie" => 10 }   
 
#see if "Spot" is present.

#Bonus: What are two other hash methods that would work just as well for this solution?

ages["Spot"]

ages.include?("Spot")

ages.has_key?("Spot")
ages.key?("Spot")

ages.member?("Spot")

ages.fetch("Spot")
