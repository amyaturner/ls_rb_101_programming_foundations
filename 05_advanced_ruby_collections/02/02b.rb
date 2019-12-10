#2-b

people = { Kate: 27, john: 25, Mike:  18, mikey: 20, John: 18, Mikey: 20 }

new_people = people.sort_by do |_, age|
  _
end
# => [[:Mike, 18], [:john, 25], [:Kate, 27]]

p new_people

# NOTE: sort_by always returns an array, even when called on a hash,
# so the result here is a new array with the key-value pairs as objects in nested arrays.
# If we need to convert this back into a hash we can call Array#to_h on it.


# Another tip:

# You may have noticed that one of the names, :john, is not capitalized.
# Since strings are compared in 'ASCIIbetical' order, :john will come after :Kate and :Mike,
# which may not be what we want.

# Luckily there is an easy way to deal with this problem.
# We can use the Symbol#capitalize method on each name within the block
# so that when the keys are compared they are all capitalized.

people.sort_by do |name, _|
  name.capitalize
end
# => [[:john, 25], [:Kate, 27], [:Mike, 18]]



# A third note:

# Array#sort and Array#sort_by have a equivalent destructive methods Array#sort! and Array#sort_by!.
# With these methods, rather then returning a new collection, the same collection is returned but sorted.
# These methods are specific to arrays and are not available to hashes.
