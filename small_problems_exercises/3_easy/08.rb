# 08

# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
# A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam')
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')
p palindrome?(['a', 'b', 'b', 'a'])
p palindrome?(['no', 'this' 'is not'])
p palindrome?(['madam', ' i\'m', ' adam'])
p palindrome?(['35', '6653'])
p palindrome?(['35', '66', '53'])
p palindrome?(['35', '66', '35'])

# CORRECT

# Further Exploration (takes an array instead):

def palindrome_arr?(array)
  element = array.join
  element == element.reverse
end

puts ""
p palindrome_arr?(['a', 'b', 'b', 'a'])
p palindrome_arr?(['no', 'this' 'is not'])
p palindrome_arr?(['madam', ' i\'m', ' adam'])
p palindrome_arr?(['35', '6653'])

def palindrome_arr_or_str?(element) # same as the first method definition ?
  element == element.reverse
end

puts ""
p palindrome_arr_or_str?(['a', 'b', 'b', 'a'])
p palindrome_arr_or_str?(['no', 'this' 'is not'])
p palindrome_arr_or_str?(['madam', ' i\'m', ' adam'])
p palindrome_arr_or_str?(['35', '6653'])
p palindrome_arr_or_str?("madam i'm adam")
p palindrome_arr_or_str?('356653')

# I can't tell exactly what the question is asking for. Whether it wants to join the elements in the array into a string first,
# and then compare, or if it's asking if the separate elements are palindromatic ? If it's the first, then the original
# method definition works. If it's the latter, then I'm stuck. I keep getting an error, and then I did some method-hunting, and
# I wasn't able to find the right solution without using an if statement or similar. So moving on...
