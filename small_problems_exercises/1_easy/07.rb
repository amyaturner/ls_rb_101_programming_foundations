#7

# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s,
# always starting with 1. The length of the string should match the given integer.

def stringy(int)
  (int/2).times { print 10 }
  1 if int.odd?
end

p stringy(11)
puts