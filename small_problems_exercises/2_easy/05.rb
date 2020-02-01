# 05

# Write a program that will ask for user's name.
# The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

puts "What is your name?"
name = gets.chomp

if name.include?("!")
  name_arr = name.chars # => ["n", "a", "m", "e", "!"]
  name_arr.select! { |el| el != "!" }
  name = name_arr.join()
  msg = "Hello #{name}. Why are we screaming?"
  msg.upcase!
  puts msg
else
  puts "Hello #{name}."
end

# CORRECT

# Provided solution:

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
