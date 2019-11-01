#4

# Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# The words in the array are case-sensitive: 'suv' != 'SUV'. `
# Once counted, print each element alongside the number of occurrences.

# Pseudo-Code:
=begin

Turn all elements into lowercase letters and add those to new array (arr_b)
Loop thru arr_b
  add first element to arr_c
  if next element is equal to first element in arr_c
    add it to the end of arr_c
  else add it to new array
  
  

for each new array created
  count elements (length)
  puts array[0]: array.length
  
=end
  

def count_occurrences(arr)
  dc_arr = arr.map { |i| i.downcase }
  dc_arr.each do |i|
    i = ??
  end
end

count_occurrences(vehicles)

# TOTALLY STUMPED ON THIS ONE.  I looked in the docs for a method that would do this, like duplicate, and uniq wasn't right, but somehow I did not fine .count.




# Provided Answer:

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)




# Clever and concise student answer (seems to work well):

def count_occurrences(array)
  array.uniq.each { |word| puts "#{word} => #{array.count(word)}"}
end