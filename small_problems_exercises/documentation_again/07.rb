#7

s = 'abc'
puts s.public_methods.inspect

=begin

You should find that it prints a list of all of the public methods available to the String s;
this includes not only those methods defined in the String class,
but also methods that are inherited from Object (which inherits other methods from the BasicObject class
and the Kernel module). That's a lot of methods.

How would you modify this code to print just the public methods that are
defined or overridden by the String class? That is, the list should exclude all
members that are only defined in Object, BasicObject, and Kernel.

=end


# A:

# I'm guessing do String.public_methods.inspect

# INCORRECT

# Provided Answer:

s.public_methods(false).inspect

# The (false) argument really means all=false, which means that you don't want to show/inspect
# the parent (superclass and above) methods, but only the 'receiver' methods. Receiver in this case
# means the object calling 'public_methods' (so our 's' string).

# My question is what the main difference is in my guessed answer and the provided answer:

String.public_methods.inspect
s.public_methods(false).inspect

# When I run each in irb, I can see they're different outputs, but I don't know why.
# I would think they'd be the same.