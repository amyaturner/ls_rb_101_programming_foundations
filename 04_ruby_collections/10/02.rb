#2

# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# A:

total = 0

ages.each do |key, value|
  total += value
end

p total # => 6174

# CORRECT