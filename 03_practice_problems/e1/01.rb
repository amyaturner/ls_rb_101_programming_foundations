#1

# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# A: [1, 2, 2, 3]

# Almost correct, only that is the 'p' version of the print out. Puts would print out:
# 1
# 2
# 2
# 3

# But I got the concept right in so far as I understand uniq doesn't mutate the caller.
# Helpful comments from the provided answer:

=begin
the puts method automatically calls to_s on its argument,
and that’s why you see the output like above.

Additional note: had the last line been p numbers instead,
the output would have been [1, 2, 2, 3] because the p method
automatically calls inspect on its argument.
We could have also done puts numbers.inspect and the output would have been the same as using the p method.
=end
