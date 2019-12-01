#7

# What is the block's return value in the following code?
# How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The block's return value is true (it actually does this:
# nil, true
# nil, false
# nil, true)
# So the final return of the last iteration of the block is true.
# .any? evaluates if there are any true returns from any iteration of the block.
# Since there are, the .any? method returns true itself.
# The output is also true.

# CORRECT

# Helpful tip in the provided answer:

# Since the Array#any? method returns true if the block ever returns a value other than false or nil,
# and the block returns true on the first iteration, we know that any? will return true.
# What is also interesting here is any? stops iterating after this point since there is
# no need to evaluate the remaining items in the array; therefore, puts num is
# only ever invoked for the first item in the array: 1.