#14

# Write some code to return an array containing the colors
# of the fruits and the sizes of the vegetables.
# The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# The return value should look like this:

[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# create new empty array 'arr'
# interate over hsh
# if type == fruit, add value of :colors key to 'arr'
# else, add value of :size to 'arr'

arr = []

hsh.each do |k, v|
  if v[:type] == 'fruit'
    cap_colors = v[:colors].map { |color| color.capitalize }
    arr << cap_colors
  else
    arr << v[:size].upcase
  end
end

p arr

# CORRECT

# Provided answer (alternative solution):

hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end