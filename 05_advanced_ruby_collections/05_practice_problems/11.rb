#11

# Use a combination of methods, including either the select or reject method,
# to return a new array identical in structure to the original
# but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

mult_3_arr = arr.map do |el|
  el.select do |num|
    num % 3 == 0
  end
end

p mult_3_arr

# CORRECT (this was a little confusing since it keeps the first array but it returns as empty. I would
# have thought that was wrong, even tho the instructions say 'idential structure', it seems like an empty inner arry
# is not correct. A bit confusing on the instructions.)
