#4

# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?("Dino") # => false

# CORRECT

p advice.include?("thin") # => true (.include? on a string matches any substring with argumennt in it.)

# whereas splitting the string first into an array and calling .match? or .include means
# it's checking for the element match (exactly).
p advice.split.include?("thin") # => false
p advice


# More practice (changing string to array with split and array to string with join(' '))
advice = advice.split
p advice
advice = advice.join(' ')
p advice