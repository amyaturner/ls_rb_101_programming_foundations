#8

# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array. The array will never be empty and
# the numbers will always be positive integers.

def average(num_arr)
  (num_arr.sum/num_arr.length).to_f
end

p average([1, 5, 87, 45, 8, 8])