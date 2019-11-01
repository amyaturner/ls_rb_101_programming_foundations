#4

# Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# A:

def count_occurrences(v)
  element = {}  #Initializes an empty hash
  counter = 0
  unique = v.uniq # => ['car', 'truck', 'SUV', 'motorcycle']
  
  while counter < unique.length
    element[unique[counter].to_sym] = v.count(unique[counter])
    counter += 1
  end
  
  element.each do |k, val|
    puts "#{k}: #{val}"
  end
end

p count_occurrences(vehicles)


# My answer works, but when compared to the provided answer (below), looks like mine has unnecessary code
# and you can do it more concisely.



# Provided Answer:

def count_elements(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

p count_elements(vehicles)





