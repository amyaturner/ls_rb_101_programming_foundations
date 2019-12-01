#5

# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# A:

# Removes a key-value pair from hsh and returns it as the two-item array [ key, value ],
# or the hash's default value if the hash is empty.

# => [:a, 'ant']
# hash => {b: 'bear'}

# shift mutates the caller (doesn't have a bang –it just mutates without it)

# CORRECT


# Provided answer:
# .shift destructively removes the first key-value pair in hash and returns it as a two-item array.