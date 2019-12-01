#2

# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# A:

# If a block is given, counts the number of elements for which the block returns a true value.

# => 2

# CORRECT
