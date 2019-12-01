#10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the family member
# is in (kid, adult, or senior). Your solution should produce the hash below
# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

# A:

# for each member in the Munsters, create a new hash pair with the key as 'age_group'
# for each member's age group
#  if age is <= 17, give age_group a value of 'kid'
#  elsif age is between?(18..64), give age_group a value of 'adult'
#  else, give age_group a value of 'senior'

munsters_arr = munsters.to_a
# => [["Herman", {"age"=>32, "gender"=>"male"}], ["Lily", {"age"=>30, "gender"=>"female"}], ["Grandpa", {"age"=>402, "gender"=>"male"}], ["Eddie", {"age"=>10, "gender"=>"male"}], ["Marilyn", {"age"=>23, "gender"=>"female"}]]

# munsters_arr[0][1]["age_group"] = "adult"

munsters_arr.each do |el|
  if el[1]["age"] <= 17 
    el[1]["age_group"] = "kid"
  elsif el[1]["age"].between?(18, 64)
    el[1]["age_group"] = "adult"
  else
    el[1]["age_group"] = "senior"
  end
end

munsters = munsters_arr.to_h
# the above is actually reassignment, so it's not really modifying the original object but
# instead, assigning it to a new object. That's not exactly correct.

# This is more accurate:

munsters.each do |k, v|
  if v["age"] <= 17 
    v["age_group"] = "kid"
  elsif v["age"].between?(18, 64)
    v["age_group"] = "adult"
  else
    v["age_group"] = "senior"
  end
end

p munsters

# CORRECT!  WOOT!!!

# The provided answer used a case study instead of an if statement, but basially the same (and same amount of code):

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end