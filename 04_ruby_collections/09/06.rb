#6

# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# A:

# => 11

# .pop destructively removes the value of the last element in the object and returns it. If 'n' is passed to .pop as an argument
# .pop(n), in returns an array of those last n elements from the object.
# Since there's no argument passed to pop, it only removes one element (the last) on the array, and returns it,
# it being the string 'caterpillar'.
# .size called on a string returns the number of characters in that string, including spaces.
# So the size of 'caterpillar' is 11.

# CORRECT
