#4b (rework)

# Write a method that counts the number of occurrences of each element in a given array.
# # The words in the array are case-sensitive: 'suv' != 'SUV'.
# Once counted, print each element alongside the number of occurrences.

# Expected output:

=begin
car => 4
truck => 3
SUV => 1
motorcycle => 2
=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  hsh = {}
  arr.each do |el|
    hsh[el] = arr.count(el)
  end
  
  hsh.each { |k, v| puts "#{k} => #{v}" }
end







count_occurrences(vehicles)