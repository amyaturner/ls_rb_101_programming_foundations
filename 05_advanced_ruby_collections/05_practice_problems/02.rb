#2

# How would you order this array of hashes based on the year of publication of each book,
# from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books_by_year = books.sort_by do |book|
  book[:published].to_i
end

p books_by_year

# CORRECT, but don't actually need the .to_i in this case... because:

#  Since all the values in question are four characters in length,
# in this case we can simply compare the strings without having to convert them to integers.
