#9

# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(pos_int)
  pos_int.to_s.split('').map { |str| str.to_i }.sum
end

p sum(123_456_789)


# OR

arr = 123_456_789

def sum2(pos_int)
  arr = pos_int.to_s.split('')
  arr.map! { |str| str.to_i }
  arr.sum
end

p sum2(arr)
p arr


# This was a helpful student answer:
def sum3(pos_nums)
  pos_nums.digits.sum
end

p sum3(123_456_789)