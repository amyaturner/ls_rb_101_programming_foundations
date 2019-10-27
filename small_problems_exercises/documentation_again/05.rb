#5

# What do each of these puts statements output?

a = %w(a b c d e)
puts a.fetch(7)  # => IndexError
puts a.fetch(7, 'beats me')  # => 'beats me'
puts a.fetch(7) { |index| index**2 } # Nothing



#1 => Correct
#2 => Correct
#3 => INCORRECT. I read the docs wrong. I thought it said the block would only be executed if a 'valid' index is referenced.
# but it said 'invalid'. So in the above, 7 is an invalid index so the block DOES get executed and executes 7x7 = 49.
# So it puts 49.
