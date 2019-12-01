#3

# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

if advice.include?("important")
  advice.sub!("important", "urgent")
end

puts advice