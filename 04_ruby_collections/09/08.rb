#8

# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# A:

# => {a: 'ant', b: 'bear'}

# .map returns a new object with each element in the original but with a potential transformation on any or all of them.
# For this .map method call, the first pair is NOT transformed b/c it evaluates to false in the if statement.
# But the second pair evaluates to true in the if statement, so the original value of :b ('bear') is transformed and
# added to the returned new oject (hash), but it transformed to the same value ('bear'). That said, if we could
# look up the object_id of 'bear' before and after .map was called, they would have different object_ids.

# INCORRECT

# I forgot that .map returns an array, not necessarily the same object type as the original.
# So, a hash is not returned for the above.
# [false, 'bear']

# Still INCORRECT.  Here's why in the provided answer:

# PROVIDED ANSWER:

# There are some interesting things to point out here.
# First, the return value of map is an array, which is the collection type that map always returns.
# Second, where did that nil come from? If we look at the if condition (value.size > 3),
# we'll notice that it evaluates to true when the length of value is greater than 3.
# In this case, the only value with a length greater than 3 is 'bear'.
# This means that for the first element, 'ant', the condition evaluates to false and value isn't returned.

# *****When none of the conditions in an if statement evaluates as true,
# the if statement itself returns nil. That's why we see nil as the first element in the returned array.

# => [nil, 'bear']
