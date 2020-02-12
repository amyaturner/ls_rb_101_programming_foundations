# 02

# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# method takes integer argument
# returns string
# return is the century number with appropriate ending (st, nd, rd, or th).
# Divide int by 100 ? and round up to whole number. Can use #ceil (rounds up and defaults to 0 decimals).
# If int is 1-100 = 1st
# If int is 101-200 = 2nd
# If int is 201-300 = 3rd
# If int is 301-400 = 4th
# If int is 1001-1100 = 11th
# If int is 1101-1200 = 12th
# If int is 1201-1300 = 13th

# If quotient ends in 1 = st
# If quotient is 2 = nd
# If quotient is 3 = rd
# else, = th
# except for 11, 12, and 13 = th

# century = (int/100).ceil
# century.to_s!
# if century == (11, 12, 13)
#   century + "th"
# elsif century.end_with?("1")
#   century + "st"
# elsif century.end_with?("2")
#   century + "nd"
# elsif century.end_with?("3")
#   century + "rd"
# else
#   century + "th"
# end

def century(year)
  century = (year / 100.00).ceil.to_s
  century + century_suffix(century)
end

def century_suffix(century)
  last_two_digits = century.chars.last(2).join
  if last_two_digits == "11" ||
     last_two_digits == "12" ||
     last_two_digits == "13"
       "th"
  elsif century.end_with?("1")
    "st"
  elsif century.end_with?("2")
    "nd"
  elsif century.end_with?("3")
    "rd"
  else
    "th"
  end
end

p century(2000) # == '20th'
p century(2001) # == '21st'
p century(1965) # == '20th'
p century(256) # == '3rd'
p century(5) # == '1st'
p century(10103) # == '102nd'
p century(1052) # == '11th'
p century(1127) # == '12th'
p century(11201) # == '113th'
p century(21400) # == '214th'
