#4b

# Method deletes all even numbers from the passed in array:

# INCORRECT WAY (destructively change the object while you're iterating over it – DON'T DO THIS):

def remove_evens!(arr)
  arr.each do |num|
    if num % 2 == 0
      arr.delete(num)
    end
  end
  arr
end

p remove_evens!([1,1,2,3,4,6,8,9])
# expected return value [1, 1, 3, 9]
# actual return value [1, 1, 3, 6, 9]


# CORRECT WAY:

def remove_evens!(arr)
  cloned_arr = arr.dup
  arr.each do |num|
    if num % 2 == 0
      cloned_arr.delete(num)
    end
  end
  cloned_arr
end

p remove_evens!([1,1,2,3,4,6,8,9])
# => [1, 1, 3, 9]
