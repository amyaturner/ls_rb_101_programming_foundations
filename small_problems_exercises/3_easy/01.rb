#01

# Write a program that solicits 6 numbers from the user, then prints a message that
# describes whether or not the 6th number appears amongst the first 5 numbers.

def num_appears_in?(nums, last_num)
  if nums.include?(last_num)
    return true
  else
    return false
  end
end

nums = []

puts "==> Enter the 1st number:"
num1 = gets.chomp.to_i
nums << num1

puts "==> Enter the 2nd number:"
num2 = gets.chomp.to_i
nums << num2

puts "==> Enter the 3rd number:"
num3 = gets.chomp.to_i
nums << num3

puts "==> Enter the 4th number:"
num4 = gets.chomp.to_i
nums << num4

puts "==> Enter the 5th number:"
num5 = gets.chomp.to_i
nums << num5

puts "==> Enter the last number:"
last_num = gets.chomp.to_i

if num_appears_in?(nums, last_num)
  print "The number #{last_num} appears in #{nums}."
  puts ""
else
  print "The number #{last_num} does not appear in #{nums}."
  puts ""
end

# CORRECT, but:
# Note, the extraction to a method in this one case might be overkill. You could just as easily do in the if statement:

# if nums.include? last_num  (instead of extracting it to a full method)
