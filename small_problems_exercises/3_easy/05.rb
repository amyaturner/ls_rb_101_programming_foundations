# 05

# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

def multiply(el_1, el_2)
  el_1 * el_2
end

def square(element)
  element * element
end

product = multiply(10, 19)

puts square(product)

# Almost. But not quite what the problem was asking for.

# Provided Solution:

def square(n)
  multiply(n, n)
end
