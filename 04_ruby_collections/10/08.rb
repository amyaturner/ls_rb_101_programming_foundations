#8

# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

p numbers

# A: => 1234
# INCORRECT =>
# 1
# 3
# numbers => []  --> INCORRECT --> [1, 3] (b/c the .each iterator adjusts each time to evaluate how many elements are in the collection.)


# What would be output by this code?
p "***********"

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

p numbers

# A:

# A: => 1234
# INCORRECT  =>
# 1
# 2
# numbers => []  --> INCORRECT  => [1, 2] (b/c the .each iterator adjusts each time to evaluate how many elements are in the collection.)

# INCORRECT ON BOTH.

# I forgot that once you remove the first (or last) element, the 'each' method advances by 1 (sor of like a 'counter').
# So on the next iteration, the index would be 1 (and select the second element). Once the first element is gone, on the
# first problem, that means it would select the '3'.
# Then the .each iterator adjusts each time to evaluate how many elements are in the collection
# and breaks when it gets to the end. IN OTHER WORDS (from provided answer):
# "The loop counter used by #each is compared against the current length of the array rather than its original length."
