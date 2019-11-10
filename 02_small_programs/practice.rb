# practice.rb


# Variables as Pointers practice:
a = [1, 2, 3, 3]
b = a
a = a.uniq!

p a
p b


puts "-----------"
p b = [ "a", "b", "c" ]
p b.uniq!   # => nil

p b

puts "************"
p b = [ "a", "b", "c", "c" ]
p b.uniq!

p b


puts "************"

def test(z)
  p z.map {|letter| "I like the letter: #{letter}"}
end

y = ['a', 'b', 'c']
test(y)

p y




puts "************"

greeting = "Hello"
p greeting

p greeting.object_id

p nil.object_id  # => 8    Is the object_id of nil always 8 ?  Yes, I think so. Why?
p true.object_id
p 5.object_id