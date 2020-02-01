# 08

# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Please enter an integer greater than 0:
# 5
# Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# Please enter an integer greater than 0:
# 6
# Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

puts "Please enter an integer greater than 0:"
int = gets.chomp.to_i

puts "Enter 's' to compute the sum of the integers between 1 and #{int}, or enter 'p' to compute the product of the integers between 1 and #{int}."
math_operator = gets.chomp.downcase


nums_arr = (1..int).to_a

if math_operator == "s"
  sum = nums_arr.sum
  puts "The sum of the integers between 1 and #{int} is #{sum}."
else
  product = 1
  nums_arr.each { |num| product *= num }
  puts "The product of the integers between 1 and #{int} is #{product}."
end

# CORRECT

# Provided solution (puts the computations into methods and adds an error message = better):
def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end

# Using #inject:

puts "Please enter an integer greater than 0:"
int = gets.chomp.to_i

puts "Enter 's' to compute the sum of the integers between 1 and #{int}, or enter 'p' to compute the product of the integers between 1 and #{int}."
math_operator = gets.chomp.downcase


nums_arr = (1..int).to_a

if math_operator == "s"
  sum = nums_arr.inject { |total, num| total + num }
  puts "The sum of the integers between 1 and #{int} is #{sum}."
else
  product = nums_arr.inject(1, :*)
  puts "The product of the integers between 1 and #{int} is #{product}."
end

# CORRECT!! YAY.
