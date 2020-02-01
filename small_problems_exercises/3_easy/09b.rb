# 09 b – this is another student's solution, which I like b/c I understood her logic well and it seemed simplistic, even if more code ?
# But maybe it's just that what she wrote resonates with the methods and syntax I've actually retained so far. Whereas, regular expressions
# are still foreign to me (which is what I used in #09-A).

def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'z').each { |digit| characters << digit }

  word = string.downcase.chars.select {|x| characters.include?(x)}.join()
  palindrome?(word)
end

p real_palindrome?('madam')
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')
