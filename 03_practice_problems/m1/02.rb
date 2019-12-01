#2

# The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# A:

# I think it will complain that you can't contatancate a string and an integer directly.
# To fix, you need to do string interpolation around the integrer calculation (inside the quotes)
# and delete the contatenation +

puts "the value of 40 + 2 is #{(40 + 2)}"

# CORRECT

# Or you can convert the integer value to string:
(40+2).to_s