#13

# Return a new array containing the same sub-arrays
# as the original but ordered logically by only taking into
# consideration the odd numbers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# The sorted array should look like this:

[[1, 8, 3], [1, 6, 7], [1, 4, 9]]

sorted_arr = arr.sort_by do |el|
  el.select do |num|
    num.odd?
  end
end

p sorted_arr

# I COULDN'T FIGURE THIS ONE OUT. HAD TO LOOK AT THE ANSWER :/
