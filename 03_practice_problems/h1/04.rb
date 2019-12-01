#4

=begin
Ben was tasked to write a simple ruby method to determine if an input string
is an IP address representing dot-separated numbers. e.g. "10.4.5.11".
He is not familiar with regular expressions. Alyssa supplied Ben with a method called is_an_ip_number?
that determines if a string is a numeric string between 0 and 255
as required for IP numbers and asked Ben to use it.
=end

=begin
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end
=end

=begin
Alyssa reviewed Ben's code and says "It's a good start, but you missed a few things.
You're not returning a false condition, and you're not handling the case
that there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

Help Ben fix his code.
=end

# A:

def dot_separated_ip_address?(input_string)
  num_dots = input_string.count('.')
  if num_dots == 3
    dot_separated_words = input_string.split(".")
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      break unless is_an_ip_number?(word)
    end
    return true
  else
    return false
  end
  
end

# My above answer sort of works, but not if someone enters something like "help.me.bob.thanks"
# B/c it will still return true if that is entered.

# Provided answer:

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end


# I think mine could be fixed if I did this:

def dot_separated_ip_address?(input_string)
  num_dots = input_string.count('.')
  if num_dots == 3
    dot_separated_words = input_string.split(".")
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
    return true
  else
    return false
  end
  
end

# I think this would now work with line 73 changed from the original (break unless) to return false unless
# but I can't test it without knowing the method definition for is_an_ip_number?(word) :/
# Would have been nice to have that in order to test.