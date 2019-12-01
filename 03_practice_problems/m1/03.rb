#3

def factors(number)
  divisor = number
  factors = []
  if number > 0
    while divisor > 0 do
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end
  else
    puts "The numbers argument needs to be more than 0."
  end
  factors
end

number = 20

p factors(number)


# Bonus 1
# What is the purpose of the number % divisor == 0 ?
# A: to filter the numbers as they count down, so only those with no remainer are added to the
# factors array

# Bonus 2
# What is the purpose of the second-to-last line (line 8)
# in the method (the factors before the method's end)?
# A: this is to return the factors variable after all the factors of the number argument are added to it (as an array).

