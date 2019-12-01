#4

# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
# Removes 2 from numbers and returns the object deleted (2). (numbers => [1, 3, 4, 5])
# .delete_at(n) removes the object of teh specified index given as an argument.
# Returns object.
# Returns nil if index is out of range.
numbers.delete(1)
# Removes 1 from the numbers array and returns the item deleted (1) (numbers => [2, 3, 4, 5])
# .delete(n) removes the item named as the array. Returns nil if item 
# .delete(n) removes the item named as the array. Returns nil if item not found.

