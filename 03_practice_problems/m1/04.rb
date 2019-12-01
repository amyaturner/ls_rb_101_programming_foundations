#4

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

buffer = []
p rolling_buffer1(buffer, 6, "rock")
p buffer

input_array = []
p rolling_buffer2(input_array, 6, "rock")
p input_array

# Is there a difference between the above two methods,
# other than what operator she chose to use to add an element to the buffer?

# A:
# Yes, while they both return the same thing,
# the first method mutates the first argument, whereas the second method does not.