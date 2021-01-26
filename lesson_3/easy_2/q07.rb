#In the previous practice problem we added Dino to our array like this:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

#We could have used either Array#concat or Array#push to add Dino to the family.

#How can we add multiple items to our array? (Dino and Hoppy)

flintstones << "Dino" << "Hoppy"

flintstones.push("Dino", "Hoppy")
flintstones.push("Dino").push("Hoppy")
#push returns the array so we can chain

flintstones.concat(["Dino", "Hoppy"])
flintstones.concat(%w(Dino Hoppy))
#concat adds an arry rather than one item