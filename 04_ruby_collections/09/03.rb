#3

# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# A:

# Docs says: "Returns a new array containing the items in self for which the given block is not true."

# => [1, 2, 3]

# This is b/c the return for each iteration of the block is nil (puts always returns nil). Since #reject returns a
# new array of the elements where the block returns 'not true', then each element is added to that new array.
# This will not mutate the original array (but using a bang on the end of .reject would).

# CORRECT