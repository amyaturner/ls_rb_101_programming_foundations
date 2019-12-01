#6

# Given the array below, use loop to remove and print each name.
# Stop the loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

# Keep in mind to only use loop, not while, until, etc.

loop do
  puts names.shift
  break if names.size == 0  # OR  break if names.empty?
end

# CORRECT
