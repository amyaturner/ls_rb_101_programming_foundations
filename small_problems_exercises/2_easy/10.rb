# 10

# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# Will print out:
# Moe
# Larry
# Curly
# Shemp
# Harpo
# Chico
# Groucho
# Zeppo

# INCORRECT

# (The below is from another student's solution):
# Remember:

# "'value' (in this case) is, in fact, just a reference that points to a string in memory."

# You are not creating copies of those strings and adding them to array2. Rather, you are copying the references into array2,
# which then point to the exact same strings objects in memory.

# "So, at the end of the iteration, array2 holds a collection of references pointing to the same strings as the references in array1.

# If you were to look at the object_id's of [each element in] each array, you would see they are identical."
