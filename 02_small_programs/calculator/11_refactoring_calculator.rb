# 11 - Refactoring Calculator

def prompt(message)
  puts "=> #{message}"
end

def valid_num?(num)
  num.to_i != 0
end

def valid_op?(op)
  op.downcase!
  if op == 'a' || op == 's' || op == 'm' || op == 'd'
    true
  else
    false
  end
end

def operation_to_msg(op)
  case op
  when 'a'
    "Adding"
  when 's'
    "Subtracting"
  when 'm'
    "Multiplying"
  when 'd'
    "Dividing"
  end
end

=begin
another way to do the valid_op?(op) method could be:

def valid_op?(op)
  op.downcase!
  if %w(1 2 3 4).include?(op)
    true
  else
    false
  end
end
=end

num1 = ''
num2 = ''
operation = ''
name = ''

prompt("Welcome to Calculator! Please enter your name:")

loop do
  name = Kernel.gets().chomp()
  if name.empty?() || name == ' '
    prompt("Please enter a valid name.")
  else
    break
  end
end

prompt("Hello #{name}!")

loop do # main loop
  loop do
    prompt("Enter your first number:")
    num1 = Kernel.gets().chomp()
    if valid_num?(num1)
      break
    else
      prompt("Please enter a valid number.")
    end
  end

  loop do
    prompt("Enter second number:")
    num2 = Kernel.gets().chomp()
    if valid_num?(num2)
      break
    else
      prompt("Please enter a valid number.")
    end
  end

  prompt('What math operation do you want to perform on your numbers?')
  prompt("Enter:
  a to add,
  s to subtract,
  m to multiply,
  or d to divide
  ")

  loop do
    operation = Kernel.gets().chomp()

    if valid_op?(operation)
      break
    else
      prompt("Must choose 'a', 's', 'm', or 'd'")
    end
  end

  result = case operation
           when 'a'
             num1.to_i + num2.to_i
           when 's'
             num1.to_i - num2.to_i
           when 'm'
             num1.to_i * num2.to_i
           when 'd'
             if num2 != 0
               num1.to_f / num2.to_f
             else
               "Error – your second number is 0 and you cannot devide by 0."
             end
           else
             prompt("Invalid operation - we used the default - add.")
             num1.to_i + num2.to_i
           end

  prompt("#{operation_to_msg(operation)} your numbers...")

  prompt("RESULT: #{result}
  ")

  # end of main loop
  prompt("Do you want to perform another calculation?
  Enter 'y' for yes, 'n' for no or exit.")
  go_again = Kernel.gets().chomp()
  break unless go_again.downcase == "y"
end

prompt("Thank you, #{name}. Goodbye.")
