#5

# Depending on a method to modify its arguments can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Whether the above "coincidentally" does what we think we wanted "depends" on
# what is going on inside the method.

# How can we refactor this practice problem to make the
# result easier to predict and easier for the next programmer to maintain?

# A: If the goal IS to mutate the caller/s from inside the method, I would change += to << as well.
# But generally, it seems like mutating the caller from inside a method might be more confusing that doing it directly outside the method,
# even if you use the method definition/implementation to change the inner-scoped variables. You would then return the
# values from the method and if you want to reassisgn, you would do so outside of the method, by
# assigning to the method call (or rather, its return value. Which would look like this:

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


# CORRECT