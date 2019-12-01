#4

# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# A:

counter = 0
ages_arr = ages.to_a
min_v = ages_arr[0][1]

loop do
  v = ages_arr[counter][1]
  
  if v < min_v
    min_v = v
  end
  
  counter += 1
  min_v
  
  break if counter == ages_arr.size
end

puts "The youngest Munster is #{ages.key(min_v)} at #{min_v} years old."

# CORRECT

# BUT... the provided answer was MUCH SIMPLER:

ages.values.min
# .values returns an array of a hash's values.
# While .min returns the object in an array with the minimum value
