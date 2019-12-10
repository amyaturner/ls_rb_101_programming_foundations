#16

# See original: https://launchschool.com/lessons/c53f2250/assignments/f524e910

# Each UUID consists of 32 hexadecimal characters, and is
# typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

def return_uuid
  hex = "0123456789abcdef"
  
  hex_arr = hex.chars
  # => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]
  
  uuid = ""
  str = ""
  
  8.times do
    num = hex_arr.sample
    str << num
  end
  uuid << str + "-"
  str = ""
    
  4.times do
    num = hex_arr.sample
    str << num
  end
  uuid << str + "-"
  str = ""
    
  4.times do
    num = hex_arr.sample
    str << num
  end
  uuid << str + "-"
  str = ""
    
  4.times do
    num = hex_arr.sample
    str << num
  end
  uuid << str + "-"
  str = ""
    
  12.times do
    num = hex_arr.sample
    str << num
  end
  uuid << str
end

p return_uuid

# IT WORKS!! Now let's see if the provided answer is much more concise ?

# YEP!

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end
