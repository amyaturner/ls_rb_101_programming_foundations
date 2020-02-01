# 03

# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a character.

puts "Please write word or multiple words:"
sentence = gets.chomp

chars = sentence.chars.keep_if { |char| char != " " }
num_of_chars = chars.count

puts "There are #{num_of_chars} characters in \"#{sentence}\"."

# CORRECT!

# As usual, the provided solution was a bit simpler:
# number_of_characters = input.delete(' ').size
