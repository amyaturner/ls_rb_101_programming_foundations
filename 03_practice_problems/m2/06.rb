#6

# How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# A:

def color_valid(color)
  color == "blue" || color == "green"
end

color = "green"
other_color = "red"
puts color_valid(color)