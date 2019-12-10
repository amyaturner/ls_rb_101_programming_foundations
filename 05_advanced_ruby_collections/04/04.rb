#4

# Increment every number by 1 without changing the data structure.

nested_arr = [[[1, 2], [3, 4]], [5, 6]]

nested_arr_plus_1 = nested_arr.map do |mid_arr|
  mid_arr.map do |final_arr|
    if final_arr.is_a? Array
      final_arr.map do |num|
        num + 1
      end
    else
      final_arr + 1
    end
  end
end

p nested_arr_plus_1

# I DID IT!! WOOT!