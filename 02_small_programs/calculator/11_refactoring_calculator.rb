# 11 - Refactoring Calculator

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')


num1 = ''
num2 = ''
operation = ''
name = ''

def prompt(message)
  puts "=> #{message}"
end

def valid_num?(num)
  if num == "0" || num =="0.0"
    true
  elsif num.to_i != 0 || num.to_f != 0.0
    true
  else
    false
  end
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
  case_result = case op
                when 'a'
                  "Adding"
                when 's'
                  "Subtracting"
                when 'm'
                  "Multiplying"
                when 'd'
                  "Dividing"
                end
                
  # What if we added something here?
  case_result
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

prompt(MESSAGES['welcome'])

loop do
  name = Kernel.gets().chomp()
  if name.empty?() || name == ' '
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hello #{name}!")

loop do # main loop
  loop do
    prompt(MESSAGES['first_num'])
    num1 = Kernel.gets().chomp()
    if valid_num?(num1)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  loop do
    prompt(MESSAGES['sec_num'])
    num2 = Kernel.gets().chomp()
    if valid_num?(num2)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  prompt(MESSAGES['math_operation'])

  loop do
    operation = Kernel.gets().chomp()

    if num2.to_i == 0 && operation == 'd'
      prompt(MESSAGES['sec_num_zero'])
    elsif valid_op?(operation)
      break
    else
      prompt(MESSAGES['invalid_op'])
    end
  end

  result = case operation
           when 'a'
             num1.to_f + num2.to_f
           when 's'
             num1.to_f - num2.to_f
           when 'm'
             num1.to_f * num2.to_f
           when 'd'
             if num2.to_i != 0
               num1.to_f / num2.to_f
             end
           end

  prompt("#{operation_to_msg(operation)} your numbers...")

  prompt("RESULT: #{result}
  ")

  # end of main loop
  prompt(MESSAGES['go_again'])
  go_again = Kernel.gets().chomp()
  break unless go_again.downcase == "y" || go_again.downcase == "y "
end

prompt("Thank you, #{name}. Goodbye.")
