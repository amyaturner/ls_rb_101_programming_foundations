#2

p ['arc', 'bat', 'cape', 'ants', 'cap'].sort
# => ['arc', 'bat', 'cap', 'ants', 'cape']  INCORRECT
# CORRECT ANSWER => ["ants", "arc", "bat", "cap", "cape"]

p [['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort
# => [['a', 'car', 'd'], ['a', 'car', 'd', 3], ['a', 'cat', 'b', 'c'], ['b', 2]]

# CORRECT

# Tip from provided answer:
# If the first item in that array had been an 'a', like the other arrays,
# then the integer would have come into play and an error would have been thrown:

[['a', 'cat', 'b', 'c'], ['a', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort
# => ArgumentError: comparison of Array with Array failed