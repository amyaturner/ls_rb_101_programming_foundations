#3

# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digits(pos_int)
  list = pos_int.to_s.split("").map { |i| i.to_i }
end

p digits(345)


# OR it seems that if you .reverse the .digits method, it seems to always return the correct (expected) answer.
# Not sure if I'm missing something on this one.

def digit_list(num)
  num.digits.reverse
end

p digit_list(12653)