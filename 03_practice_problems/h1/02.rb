#2

# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# A:
{:a => "hi"}


# INCORRECT

# I know why after realizing this isn't correct.
# Greetings points to an object.
# Then informal_greeting is assigned to the value of :a within the greeting object.
# So, informal_greeting is actually pointing at the same object as (the sub-object within) greeting.
# When you mutate informal_greeting with << you are, in fact, also mutating the greeting object.
# They are all still the same object id.
# Tricky!

# So, the correct answer is:

{:a => "hi there"}