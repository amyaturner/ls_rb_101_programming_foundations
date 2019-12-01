#3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Remove people with age 100 and greater.

# A:

p ages.reject { |k, v| v >= 100 } # non-destructive
p ages

# CORRECT
