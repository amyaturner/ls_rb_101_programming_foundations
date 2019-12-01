#2

=begin
Describe the difference between ! and ? in Ruby.

# A:

A ! and ? have quite different behaviors in Ruby.
The ! is used after some mutating method calls to *make* it mutating.
The ! before an operator or statement usually means 'NOT' or the opposite of
the boolean the statement would otherwise evauate to.

The ? used after a method call is asking if something is x (.empty?, .include?, etc.)
and returns a boolean (true/false).
The ? used before a statement is usually part of a terniary operator, which is a one-line
alternative to a simple if/then statement.
Finally, only one character after a ? turns that character into a one-character string. Ex: ?s => "s", ?5 => "5"

Explain what would happen in the following scenarios:

1. what is != and where should you use it?
  != is a comparison operator meaning does not equal.
  You should use it between two operands with the intent to evaluate to either true or false. Ex: 5 != 6 => true

2. put ! before something, like !user_name
  Means "NOT" user_name. So this would be used in something like an if statement. Ex:
  if !user_name
    # do something
  end

3. put ! after something, like words.uniq!
  When used in this context, the ! is a 'bang' and if the method preceeding the bang has the ability to mutate the caller,
  then the bang adds that functionality/mutating-capability.

4. put ? before something
  If it's before one character (?s), it turns returns that character as a string.
  If it's used as part of a terniary operator, it's used to evaluate your boolean statement.

5. put ? after something
  ? after a method call is usually evauating to a boolean (true or false). Ex: x.empty?  x.include?
  But you it's really just part of the method name and is indicating this behavior within the method definition.
  It's not actually doing anything on its own in this case. So even if you add ? to the end of a method call,
  it won't necessarily mean that method implementation evauates the caller to a boolean. It depends on the method definition.

6. put !! before something, like !!user_name
  !! is almost canceling out itself. It basically turns something that's true to false (and vice versa) and then turns
  it back to true again... And vice versa. Ex: user_name is truthy. !user_name is falsy. !!username is truthy.


Helpful comments on provided answer:
Just to clarify, if you see ! or ? at the end of the method,
it's actually part of the method name, and not Ruby syntax.
Therefore, you really don't know what the method is doing,
even if it ends in those characters -- it depends on the method implementation.

!!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
!<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.
=end