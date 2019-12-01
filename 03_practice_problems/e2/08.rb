#8

# Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

=begin
...remove everything starting from "house".

Review the String#slice! documentation, and use that method to make the return value 
"Few things in life are as important as ". But leave the advice variable as
"house training your pet dinosaur.".
=end

few_things = advice.slice!("house training your pet dinosaur.")
p advice
p few_things

# CORRECT (but I feel like there's probably syntax to include everything in the string after 'house' without typing it.)

=begin
As a bonus, what happens if you use the String#slice method instead?
=end

# A:  advice doesn't change from original b/c .slice doesn't mutate it like .slice! does.


# PROVIDED ANSWER:

advice.slice!(0, advice.index('house'))