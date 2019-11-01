#7 - Walk-Through Calculator

puts "Enter first number (decimal numbers will be rounded and words will be replaced by 0):"
num1 = Kernel.gets().chomp().to_i

puts "Enter second number (decimal numbers will be rounded and words will be replaced by 0):"
num2 = Kernel.gets().chomp().to_i

puts "What type of math operation do you want to perform on your two numbers?"
puts "(Enter 'a' for add, 's' for subtract, 'm' for multiply or 'd' for divide"
operation = Kernel.gets().chomp()

puts "RESULT:"
case operation
  when "a"
    puts num1 + num2
  when "s"
    puts num1 - num2
  when "m"
    puts num1 * num2
  when "d"
    if num2 != 0
      puts num1 / num2
    else
      puts "Error – your second number is 0 and you cannot devide by 0. Please try again."
    end
  else
    puts "You did not enter a valid math operation, so we used the default (add)."
    puts num1 + num2
end
  
  