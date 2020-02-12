# 03

# In the modern era under the Gregorian Calendar,
# leap years occur in every year that is evenly divisible by 4,
# unless the year is also divisible by 100. If the year is evenly divisible by 100,
# then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0.
# Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year,
# or false if it is not a leap year.

# argument is int greater than 0
# if int % 400 == 0
#   true
# elsif int % 100 == 0
#   false
# elsif int % 4 == 0
#   true
# else
#   false
# end

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true # don't actually need this
  else
    false  # don't actually need this last else; the one above it can serve as the last else b/c it will return flase if not true.
  end
end

p leap_year?(2016) # == true
p leap_year?(2015) # == false
p leap_year?(2100) # == false
p leap_year?(2400) # == true
p leap_year?(240000) # == true
p leap_year?(240001) # == false
p leap_year?(2000) # == true
p leap_year?(1900) # == false
p leap_year?(1752) # == true
p leap_year?(1700) # == false
p leap_year?(1) # == false
p leap_year?(100) # == false
p leap_year?(400) # == true

# CORRECT

# Provided Solutions:

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

# AND

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end
