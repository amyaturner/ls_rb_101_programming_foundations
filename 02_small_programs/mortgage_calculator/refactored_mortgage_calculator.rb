# refactored_mortgage_calculator.rb

require 'yaml'
MESSAGES = YAML.load_file('messages_mortgage_calc.yml')

# METHODS
def prompt(message)
  puts "=> #{message}"
end

def validate_loan_amount(input)
  loop do
    num = input.delete(',').to_f
    if num > 0
      return num
    else
      prompt(MESSAGES["loan_amount_error"])
      input = gets.chomp
    end
  end
end

def validate_apr(apr_input)
  loop do
    apr = apr_input
    if apr.to_f < 1 && apr.to_f > 0
      return apr
    else
      prompt(MESSAGES["apr_error"])
      apr_input = gets.chomp
    end
  end
end

def validate_loan_duration(loan_duration_input)
  loop do
    if loan_duration_input.to_f >= 1
      return loan_duration_input
    else
      prompt(MESSAGES["duration_error"])
      loan_duration_input = gets.chomp
    end
  end
end

def retrieve_monthly_interest_rate(apr)
  apr / 12
end

def retrieve_loan_duration_months(loan_years)
  loan_years * 12
end

def calculate_monthly_payment(loan_amount, monthly_interest_rate, loan_duration_months)
  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))
  monthly_payment.round(2)
end

def go_again(user_input)
  loop do
    user_input.downcase!
    if user_input == "y" || user_input == "yes"
      return "y"
    elsif user_input == "n" || user_input == "no" || user_input == "exit"
      return "n"
    else
      prompt(MESSAGES["go_again_invalid"])
      user_input = gets.chomp
    end
  end
end

# WELCOME MESSAGE
prompt(MESSAGES["welcome"])

# MAIN LOOP
loop do # main loop
  prompt(MESSAGES["loan_amount"])
  loan_amount_input = gets.chomp
  loan_amount = validate_loan_amount(loan_amount_input)

  prompt(MESSAGES["apr"])
  apr_input = gets.chomp
  apr = validate_apr(apr_input)

  prompt(MESSAGES["duration"])
  loan_duration_input = gets.chomp
  loan_duration_years = validate_loan_duration(loan_duration_input)

  monthly_interest_rate = retrieve_monthly_interest_rate(apr.to_f)

  loan_duration_months = retrieve_loan_duration_months(loan_duration_years.to_f)

  monthly_payment = calculate_monthly_payment(loan_amount, monthly_interest_rate, loan_duration_months)

  prompt("Your monthly payment is:
  $#{monthly_payment}")

  prompt(MESSAGES["go_again"])
  answer = gets.chomp
  break if go_again(answer) == "n"
end # end main loop

# COMMENTS: strangely my original code (without extracting the loops, etc. into helper methods was 58 lines of code, whereas refactored it's 102 lines.
# And for me, with this simple program, the refactored version is actually harder for me to read than the original – but perhaps just in this case.
# I'm very glad I did the refactoring though. It was VERY difficult for me and the first big frustration and major confusion I've had in the program so far.
# But I took a couple breaks and then came back and that was a big help in seeing new info my brain wouldn't take in before the break.
# I think refactoring and playing with the code this way, even if tedious, is what programming becomes all about and this is precisely where the deeper learning comes from.
# So today was frustrating and also a big success in terms of deeper understanding about how Ruby works and conventions about how to structure a smaller program. I can see the benefits
# of extracting longer code sections to helper methods. I'm not sure I did all that in the most efficient way, but just doing it is where the comprehension came from.