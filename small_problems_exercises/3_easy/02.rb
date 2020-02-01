# 02

# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

puts "==> Enter the first number:"
num1 = gets.chomp.to_i

puts "==> Enter the second number:"
num2 = gets.chomp.to_i

puts ""

sum = num1 + num2
puts "#{num1} + #{num2} = #{sum}"

difference = num1 - num2
puts "#{num1} - #{num2} = #{difference}"

product = num1 * num2
puts "#{num1} * #{num2} = #{product}"

quotient = num1 / num2
puts "#{num1} / #{num2} = #{quotient}"

remainder = num1 % num2
puts "#{num1} % #{num2} = #{remainder}"

power = num1 ** num2
puts "#{num1} ** #{num2} = #{power}"

# CORRECT

# Provided Solution (does the math inside the puts):
# prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
# prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
# prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
# prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
# prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
# prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")
