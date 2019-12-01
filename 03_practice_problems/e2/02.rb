#2

munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways (code will be executed on original munsters_description above):

=begin
1. "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
2. "The munsters are creepy in a good way."
3. "the munsters are creepy in a good way."
4. "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
=end

#1
p munsters_description.swapcase!

#2
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.capitalize!
# CORRECT

#3
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.downcase!

#4
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.upcase!


# CORRECT