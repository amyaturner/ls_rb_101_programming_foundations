# 06

# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if **exactly one** of its arguments is truthy, false otherwise.

# Example:
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

def xor?(arg1, arg2)
  if arg1 == true && arg2 == false
    true
  elsif arg1 == false && arg2 == true
    true
  else
    false
  end
end

puts xor?(5.odd?, 4.odd?) # => true
puts xor?(5.even?, 4.odd?) # => false

# CORRECT

# But provided solution has two shorter options:

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end

# That makes sense.
