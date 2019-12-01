#7

# In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino" << "Happy"

p flintstones

# CORRECT

# These also work:

flintstones.concat(%w(Dino Hoppy)) 
flintstones.push("Dino").push("Hoppy")

