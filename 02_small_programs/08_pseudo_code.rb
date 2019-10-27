#8 - Pseudo-Code

=begin

For example, write out pseudo-code (both casual and formal) that does the following:

1. A method that returns the sum of two integers


Casual:

define method (method name)
integer1 + integer2
return result

Formal:

START

SET method_name
  SET integer1 = integer
  SET integer2 = integer
  integer1 + integer2

END



2. A method that takes an array of strings, and returns a string that is all those strings concatenated together

Casual:

variable = array of strings
define method that takes array variable
  for each element in the array, concatenate the elements to create one long string
  return result
  
  
Formal:

START

SET array
SET method (takes array)
iterate array
SET element
SET long_string
long_string = long_string + element
return result

END



3. A method that takes an array of integers, and returns a new array with every other element

Casual:

array = collection of integers
define method (takes array)
iterate array, select every other element (odd numbered elements ?)
add selected elements to new array
return result
  

Formal:

START

SET array = integers
SET method (takes array)
  if array's element is odd
    SET new_array = new_array + element (add element as an element of new_array)
  else
    skip/next

return new_array

END



=end