# PEDAC Practice

# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# Input: string
# Output: array of strings (substrings of the input string)
# Rules:
#   Explicit Requirements:
#     - return only and all palindromes as substrings
#     - palindromes are case-sensitive ("mom" is considered a palindrome; "Mom" is not.)

#   Implicit Requirements:
#     - Object returned is an array of strings
#     - Substrings should be at least 2 characters long

# Questions:
#   1) Can I assume that all inputs are strings? Test cases don't show any non-string inputs,
# so you should ask whether the inputs can contain non-string values, and what you should do with them.

# Algorithm:
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result
#    array
#  - return the result array


# Sub-Algorithm for:
# create an array named substring_arr that contains all of the
# substrings of the input string that are at least 2 characters long.

# To find the right algorithm, you can simplify the problem by taking a small concrete example
# and use it to determine how you will approach the problem.
# For instance, we can take a short word like halo and write all its
# substrings that are 2 characters in length or longer.
# The result is ["ha", "hal", "halo", "al", "alo", "lo"].
# Do you see a pattern here?

# loop thru input string
# start with first character and extract to substring_arr a substring with the first two characters.
# increase to three characters and add that to substring_arr.
# keep doing this (increasing number of characters in the substring until you reach the length of the string)
# once you do, move on to the next character in the string and begin with that as the first letter and do the same thing.
# Once you reach the second to last character in the string and you have added the final two-character substring...
# End



# FULL DETAIL PSEUDOCODE / ALGORITHM:
#  initialize 'result' variable to an empty array
#  loop thru input string
#    initialize first_letter_substring = 0
#    loop
#      initialize length = (first_letter_substring + 1) ???
#      start with first character: string[first_letter_substring]
#      extract a substring with the first two characters of the string
#        string.slice[first_letter_substring, length]
#        STUCK HERE :/
#  increase to three characters and add that to substring_arr.
#  keep doing this (increasing number of characters in the substring until you reach the length of the string)
#  once you do, move on to the next character in the string and begin with that as the first letter and do the same thing.
#  Once you reach the second to last character in the string and you have added the final two-character substring...
#  End loop
#  loop through the words in the substring_arr array.
#  if the word is a palindrome, append it to the result array
#  return the result array




# SUBSTRINGSPROVIDED PSEUDOCODE / ALGORITHM FOR SUBSTRINGS METHOD:

# - create an empty array called `result` that will contain all the required substrings
# - initialize variable start_substring_idx and assign 0 to it.
# - initialize variable end_substring_idx and assign value of
#   start_substring_idx + 1 to it.
# - Enter loop which will break when start_substring_idx is equal
#     to str.size
#   - Within that loop enter another loop that will break if
#     end_substring_idx is equal to str.size
#     - append to the result array part of the string from
#       start_substring_idx to end_substring_idx
#     - increment `end_substring_idx` by 1.
#   - end the inner loop
#   - increment `start_substring_idx` by 1.
#   - reassign `end_substring_idx` to `start_substring_idx += 1`
# - end outer loop
# - return `result` array


# CODE:
def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1

  while start_substring_idx < str.size
    while end_substring_idx < str.size
      result << str.slice(start_substring_idx..end_substring_idx)
      end_substring_idx += 1
    end
    start_substring_idx += 1
    end_substring_idx = start_substring_idx + 1
  end

  result
end


# MY PSEUDOCODE / ALGORITHM FOR PALIDROME METHOD:


# Define palindrome(arr) method
#   Initialize pali_arr = []
#   loop through each substring in the passed array
#     if substring == substring.reverse
#       add substring in uppercase to pali_arr
#     end if statement
#   end loop

#  Return pali_arr
#  end method definition


def palindrome_substrings(arr)
  pali_arr = []
  arr.each do |substr|
    if substr == substr.reverse
      pali_arr.push(substr)
    end
  end
  
  pali_arr
end

str = "abcddcbA"
p palindrome_substrings(substrings(str)) # Passes the result of calling substring(str)



# I got most of the code right, even though I had a much harder time extracting the perfect login and
# pseudocode first.
# But one place in the provided answer that I think would get scrutinized is that I didn't
# further extract the check if each substring is, in fact, a palidrome from the palidrome array method.
# I think they would say to separate that out into its own method, for the sake of simplicity, clarity,
# and to ensure each method is really performing only one primary function.
# So that would look like this:

def is_palindrome?(str)
  str == str.reverse
end

def palindrome_substrings_2(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end