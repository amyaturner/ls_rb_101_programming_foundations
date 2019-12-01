#7

# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# ex: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# loop through the hash
# count how many instances of each letter there are
# Add the total instances for each letter as a pair in the hash ('letter', number of instances)
# Capital letters and their equivalent lowercase letters are counted as different letters.

statement_arr = statement.chars.reject! { |el| el == " " }
# => ["T", "h", "e", "F", "l", "i", "n", "t", "s", "t", "o", "n", "e", "s", "R", "o", "c", "k"]
letters = {}

statement_arr.each do |el|
  letters[el] = statement_arr.count(el)
end

p letters

# CORRECT

# Provided Answer (I prefer mine, but prob only b/c I don't know yet how to
# use .scan method or how the value of the 'letters' variable is being defined/calculated. ?

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result
