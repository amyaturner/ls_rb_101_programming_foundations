#1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Is "Spot" present in this hash?

p ages.include?("Spot") # => false

# Bonus: What are two other hash methods that would work just as well for this solution?

# .has_key?
# .key?
# .member?