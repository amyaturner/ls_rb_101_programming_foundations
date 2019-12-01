#6-D

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# not mutated
p my_numbers                      # => [1, 4, 3, 7, 2, 6]

# Update our double_numbers method to not only be able to double the values in an array,
# but to multiply by any number. For example, let's create a method called multiply
# that can take an additional argument to determine the transformation criteria.

puts "**************"

def multiply(numbers, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= multiplier
    multiplied_numbers << current_number
    # or could just be condensed to one line:  multiplied_numbers << numbers[counter] * multiplier

    counter += 1
  end

  multiplied_numbers
end

p my_numbers = [2, 4, 6, 14, 2, 6]
p multiply(my_numbers, 4)  # => [8, 16, 24, 56, 8, 24]

# not mutated
p my_numbers                      # => [2, 4, 6, 14, 2, 6]

# CORRECT
