#5

# Modify the code below so "Hello!" is printed 5 times.

say_hello = true

while say_hello
  puts 'Hello!'
  say_hello = false
end


# A:

say_hello = true

5.times do
  puts 'Hello!'
end

puts "*******"
# OR
counter = 0

while say_hello
  puts 'Hello!'
  counter += 1
  break if counter == 5
end

# CORRECT
