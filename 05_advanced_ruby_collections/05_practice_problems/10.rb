#10

# Without modifying the original array, use the map method to return a new array
# identical in structure to the original but where the value of each integer is incremented by 1.

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hsh|
  plus_one_hsh = {}
  hsh.each do |k, v|
    plus_one_hsh[k] = v + 1
  end
  plus_one_hsh
end

p new_arr
p arr

# Didn't get this one – had to look at the solution.
