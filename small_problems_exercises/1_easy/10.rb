#10

# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary.
# If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

def calculate_bonus(integer, boolean)
  if boolean == true
    bonus = integer/2
  else
    bonus = 0
  end
end

p calculate_bonus(25_000, true)
p calculate_bonus(1600, false)


# The Provided Answer is more concise and uses the ternary operator:

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end