#1

# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# A:

[]

# INCORRECT

# Provided answer:

# => [1, 2, 3]
# .select performs selection based on the truthiness of the block's return value.
# In this case the return value will always be 'hi', which is a "truthy" value.
# Therefore select will return a new array containing all of the elements in the original array.