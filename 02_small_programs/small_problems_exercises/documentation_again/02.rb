# 2

require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)

# What will each of the 4 puts statements print?


# My Answer:

#1 nil

#2 2016

#3 2016/5  or maybe "May 2016" ?

#4 2016/5/13  or maybe "May 13, 2016" ?




# INCORRECT:
# First, the dates use dashes, not forward slashes.
# Second, Date.new does not return nil, and it does not return the current date.
# Rather, the year defaults to the year one in the Julian Period, which is -4712. Crazy. See more here: https://en.wikipedia.org/wiki/Julian_day
# Third, Date.new(2016) does not return just the year, it returns that year with the first month and first day (01-01).
# So, if all arguments are missing, it returns the current date. If the first argument is given, but any of the other two are missing, the default is 01.



# Provided Answer:

# # puts Date.new
-4712-01-01

# puts Date.new(2016)
2016-01-01

# puts Date.new(2016, 5)
2016-05-01

# puts Date.new(2016, 5, 13)
2016-05-13