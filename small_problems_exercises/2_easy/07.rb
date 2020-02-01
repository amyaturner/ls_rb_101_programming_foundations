# 07

# Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

nums = (1..99).to_a
nums.each { |num| puts num if num.even? }

# CORRECT

# Provided Solution (bit different):

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end
