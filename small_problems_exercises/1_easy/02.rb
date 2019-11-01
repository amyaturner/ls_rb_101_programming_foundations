#2

# Write a method that takes one integer argument, which may be positive, negative, or zero.
# This method returns true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value.

def odd_num(int)
  int % 2 != 0
end

puts odd_num(3)



# Further Exploration:

# If you weren't certain whether % were the modulus or remainder operator,
# how would you rewrite #is_odd? so it worked regardless?


def odd_num(int)
  positive_int = int<0 ? -int : int;   # Ternary operator (condition ? true : false)  –  this use is checking if the num is less than 0 and changes it to negative if so, a double negative is a positive.
  positive_int % 2 != 0
end

puts odd_num(3)
