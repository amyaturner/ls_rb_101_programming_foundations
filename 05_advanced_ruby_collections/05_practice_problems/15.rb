#15

# Write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.map do |el|
  el.select do |k, v|
    v.all? do |num|
      num.even?
    end
  end
end

p new_arr

# INCORRECT

# I was close, but the arr[1] element is one long hash, and the :c key has a value that contains one odd number,
# so that hash should not be included.

# PROVIDED ANSWER:

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hsh|
            hsh.all? do |k, v|
              v.all? do |num|
                num.even?
              end
            end
          end

p new_arr
