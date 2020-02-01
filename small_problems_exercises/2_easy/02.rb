# 02

# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

puts "Enter the length of the room in meters:"
l = gets.chomp.to_f

puts "Enter the width of the room in meters:"
w = gets.chomp.to_f

area = (l * w).round(2)
area_in_feet = (area * 10.7639).round(2)

puts "The area of the room is #{area} square meters (#{area_in_feet} square feet)."

# CORRECT