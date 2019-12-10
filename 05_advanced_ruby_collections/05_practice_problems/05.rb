#5

# Figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Select males
# iterate through each and add their ages to 'total'

total = 0

male_munsters = munsters.select do |mun|
                  munsters[mun]["gender"] == "male"
                end

male_munsters.select do |male|
  total += male_munsters[male]["age"]
end

p total

# My answer works, but the LS provided answer was more consice and straightforward:

munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end