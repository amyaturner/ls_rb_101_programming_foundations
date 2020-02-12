# 01

# method takes two strings
# compares them to each other to determine longest string
# concatenates strings, such that shorter string is first, then longer string, then shorter again.
# returns result

def short_long_short(str1, str2)
  concat_string = ""
  if str1.length > str2.length
    concat_string << str2 << str1 << str2
  else
    concat_string << str1 << str2 << str1
  end
end

str1 = "gimme"
str2 = "no"

p short_long_short(str1, str2)
p short_long_short("whaaaaaa?", "dasright")

# CORRECT

# Second Provided Answer:
def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end

# But uses this as an example of being too clever and unnecessarily hard to understand,
# such that, the first solution (which is same as mind) is much clearer.
# The above alternative is not even more concise, but if it was, the explanation is trying to
# make clear that "Clarity is more important than density."
