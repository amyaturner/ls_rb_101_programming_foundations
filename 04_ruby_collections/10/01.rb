#1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

# A:
flint_hash = {}

flintstones.each_with_index do |el, i|
  flint_hash[el] = i
end

p flint_hash

# CORRECT
