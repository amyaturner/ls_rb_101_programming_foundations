#5

# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

def reverse_sentence(str)
  str.split.reverse.join(" ")
end

p reverse_sentence("amazing things you can do")