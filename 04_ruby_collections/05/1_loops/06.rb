#6

# Using a while loop, print 5 random numbers between 0 and 99.
# The code below shows an example of how to begin solving this exercise.

=begin
numbers = []

while <condition>
  # ...
end
=end

# A:
numbers = []

while numbers.size < 5
  num = rand(0..99)
  numbers.push(num)
end

puts numbers

# OR

5.times do
  puts rand(0..99)
end