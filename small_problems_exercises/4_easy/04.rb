# 04

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year.
# Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year >= 1752 && year % 400 == 0
    true
  elsif year >= 1752 && year % 100 == 0
    false
  else
    year >= 1752 && year % 4 == 0
  end
end

# Close, and this works, but actually, you odn't need the >= 1752 on the last three if clauses.

# Provided Solution:

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end
