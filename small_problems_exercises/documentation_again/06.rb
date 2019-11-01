#6

# What does this code print?

5.step(to: 10, by: 3) { |value| puts value }

# A:

# I searched the Ruby docs for "keyword Arguments, but didn't really find anything useful for this question."
# So, I googled "Ruby 5.step what is .step" and found a suggestion on ruby-forum.com
# An answer to a posted question suggested using the Range class's .step method.
# So I searched the docs for the Range class and there I found the 'step' method.

# I think the above will print out:

# 5
# 8


# CORRECT!


# Provided answer on LS told me to look in the Numeric class and I see the " to: and by: " arguments defined there.
# In the Range class's #step documentation, it doesn't cover those two keyword arguments.
# So basically to: and by: are actually symbols whose values can be set to integers.
# I had just guessed by the "to" and "by" names what they meant (count up 'to' x and count 'by' y) and was correct.