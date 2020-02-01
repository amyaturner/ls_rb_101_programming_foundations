# 06

# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

nums = (1..99).to_a
nums.each do |num|
  puts num if num.odd?
end

# CORRECT

# Provided solution (bit different):

value = 1
while value <= 99
  puts value
  value += 2
end

# Alternative Solution (mine):
1.upto(99) {|i| puts i if i.odd? }

# CORRECT
