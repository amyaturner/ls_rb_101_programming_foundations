#9

words = "the flintstones rock"

# Write your own version of the rails titleize implementation (capitalizes the first letter of each word in a string).

words = words.split.each { |word| word.capitalize! }.join(" ")

p words

# CORRECT
