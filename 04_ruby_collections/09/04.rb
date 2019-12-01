#4

# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# A:

# => {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}

# B/c .each_with_object returns the passed argument, which is an empty hash that then gets keys and values set
# with each iteration. Each key is set to the current element in the array, which is a string, and the 0 index of that
# string is set to the key. The value is then set to the full string element of the array's current iteration.

# So, 'ant'[0] => 'a'
# 'bear'[0] => 'b'
# 'cat'[0] => 'c'

# These set each key in the new hash.

# Then their values are assigned to the current element in the array: 'ant', 'bear' and 'cat'.

# CORRECT
