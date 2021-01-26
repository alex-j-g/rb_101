#Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %W(Fred Barney Wilma Betty BamBam Pebbles)
#uppercase W allows interpolation and escaped characters
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#lowercase disables it
