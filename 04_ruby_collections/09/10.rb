#10

# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# A:

# => [1, nil, nil]

# B/c the first iteration's if statement is false and enters 'else' which is num (first iteration is 1)
# The second and third iterations's if statements are true, which is puts num, and puts always returns nil.

# CORRECT
