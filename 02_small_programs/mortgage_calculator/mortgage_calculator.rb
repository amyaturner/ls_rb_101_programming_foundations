# Mortgage Calculator

require 'yaml'
MESSAGES = YAML.load_file('messages_mortgage_calc.yml')

def prompt(message)
  puts "=> #{message}"
end

loop do # main loop
  prompt(MESSAGES["loan_amount"])
  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    loan_amount = loan_amount.tap { |s| s.delete!(',') }.to_f
    if loan_amount > 0
      break
    else
      prompt(MESSAGES["loan_amount_error"])
    end
  end

  prompt(MESSAGES["apr"])
  apr = ''
  loop do
    apr = gets.chomp
    if apr.to_f < 1 && apr.to_f > 0
      break
    else
      prompt(MESSAGES["apr_error"])
    end
  end

  prompt(MESSAGES["duration"])
  loan_duration_years = ''
  loop do
    loan_duration_years = gets.chomp
    if loan_duration_years.to_f >= 1
      break
    else
      prompt(MESSAGES["duration_error"])
    end
  end

  monthly_interest_rate = apr.to_f / 12

  loan_duration_months = loan_duration_years.to_f * 12

  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))

  prompt("Your monthly payment is:
  $#{monthly_payment.round(2)}")
  
  prompt(MESSAGES["go_again"])
  go_again = gets.chomp
  go_again = go_again.downcase
  break unless go_again == "y" || go_again == "yes"
end
