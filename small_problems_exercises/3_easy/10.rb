# 10

# Write a method that returns true if its integer argument is palindromic, false otherwise.
# A palindromic number reads the same forwards and backwards.

# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)

# CORRECT

# Provided solution is kinda cool:
# def palindromic_number?(number)
  # palindrome?(number.to_s) # this relies on the method written in lesson #8 (not shown here).
# end

# Further Exploration:

p palindromic_number?(0123210)
p 0123210.to_s
p 0.to_s

# Apparently, putting a zero or many at the front of an integer means it is octal. Not sure what that means, but read it in another
# student's response. He had a hard time understanding what the question wanted you to do with that.
# I think it means you have to write in some conditionals or modifications before turning the integer to a string.
# Don't have time to play with that now, but will come back to it.
