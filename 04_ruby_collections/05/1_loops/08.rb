#8

# Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

# A:
until numbers.size == 0
  puts numbers.shift
end

# Mind works, but it mutates the numbers array, which it really shouldn't.

# Provided answer:

count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

# More elegant.