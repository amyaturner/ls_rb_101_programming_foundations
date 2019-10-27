#6

# What does this code print?

5.step(to: 10, by: 3) { |value| puts value }

# A:

# I googled "Ruby 5.step what is .step" and found a suggestion on ruby-forum.com
# to use the Range class's .step method for the person's question.
# So I looked in the Range class and found the 'step' method.

# I think the above will print out:

# 5
# 8


# CORRECT! WOOT!


# Provided answer on LS told me to look in the Numeric class and there I see the to: and by: arguments better defined.
# In the Range class #step definition, it doesn't address those two keyword arguments.
# So basically these are symbols (don't change) whose values can be set to integers.
# I had just guessed by the symbol names what they meant (count up 'to' x and count 'by' y) and was correct.