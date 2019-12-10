#8

# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# iterate thru hsh
# for each value (array), iterate thru the elements in that array
# for each element (string), use #chars to break apart the string into an array of its characters
# iterate through each character (string) within that char-array
# output all of the strings that are vawels within that array

hsh.each_value do |arr|
  arr.each do |str|
    str.chars.each do |char|
      print char if ["a", "e", "i", "o", "u"].include?(char)
    end
  end
end

puts

# CORRECT! WOOT!
