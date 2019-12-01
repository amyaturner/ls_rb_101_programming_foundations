#3

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# A:
# My string looks like this now: pumpkins
# My string looks like this now: ["pumpkins", "rutabaga"]

# This is the output b/c += (assignment) does NOT mutate the caller,
# whereas << (append) does.

# CORRECT.