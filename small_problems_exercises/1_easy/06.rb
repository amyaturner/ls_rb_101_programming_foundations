#6

# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with words that contain five or more characters reversed.
# Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

def reverse_words(str)
  arr = str.split
  arr.map do |i|
    i.reverse! if i.length >= 5
  end
  arr.join(" ")
end


puts reverse_words("this returns the new string")
p reverse_words("this returns the new string")