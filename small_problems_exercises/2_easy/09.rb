# 09

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# This prints out:
# Alice
# Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# This prints out:
# BOB
# BOB

# This is because the first set of code reassigns name to a new string, and leaves the second variable still pointing at the original string.
# The second set of code, however, destructively mutates the string that both the "name" and "save_name" variables are pointing to.
# The second set of code does not reassign either variable, so they both still point to that now mutated string.