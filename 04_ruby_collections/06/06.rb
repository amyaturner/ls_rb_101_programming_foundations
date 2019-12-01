#6

# Select the key-value pairs where the value is 'Fruit'.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# How would you implement a method like this?

# PSEUDOCODE:
# Turn hash into nested arrays
# loop through each array in that array
# use a counter to iterate over each of the four arrays
# use index of 1 to get the value of that pair
# if it == "Fruit", add the pair to a new hash ?  How? This may need additional steps
# when counter == full_array.size, exit loop
# turn the array into a hash
# return hash

# A:

def select_fruit(produce)
  produce_array = produce.to_a # => [['apple', 'Fruit'], ['carrot', 'Vegetable'], ['pear', 'Fruit'], ['broccoli', 'Vegetable']]
  fruits_array = []
  counter = 0
  
  loop do
    # apparently, this has to be at the top (rather than bottom) of the loop in case produce_list is empty hash. Otherwise it will throw an error.
    break if counter == produce_array.size
    
    current_pair = produce_array[counter]
    
    if current_pair.include?('Fruit')
      fruits_array << current_pair
    end
    
    counter += 1
  end
  
  fruits_array.to_h
end

my_hash = {}
p select_fruit(produce)
p produce





# Provided Answer:

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end