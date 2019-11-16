# RPS Walkthrough

RPS = ["rock", "paper", "scissors"]

require 'yaml'
MSG = YAML.load_file('msg_rps.yml')

def prompt(message)
  puts "=> #{message}"
end

def validate_player_choice(choice)
  loop do
    choice = choice.downcase
    if choice == "r" || choice == "rock"
      return "rock"
    elsif choice == "p" || choice == "paper"
      return "paper"
    elsif choice == "s" || choice == 'scissors'
      return "scissors"
    else
      prompt(MSG['invalid_player_choice'])
      choice = gets.chomp
    end
  end
end

def continue?(enter)
  loop do
    if enter.empty?
      break
    else
      prompt(MSG['help_comp'])
      enter = gets.chomp
    end
  end
end

def determine_winner(first, second)
  (first == "paper" && second == "rock") ||
    (first == "scissors" && second == "paper") ||
    (first == "rock" && second == "scissors")
end

def print_win_msg(choice, comp_choice)
  if determine_winner(choice, comp_choice)
    prompt(MSG['you_win'])
  elsif determine_winner(comp_choice, choice)
    prompt(MSG['comp_wins'])
  else
    prompt(MSG['tie'])
  end
end

def go_again?(go_again_answer)
  loop do
    go_again_answer = go_again_answer.downcase
    if go_again_answer == 'y' || go_again_answer == 'yes'
      return 'y'
    elsif go_again_answer == 'n' || go_again_answer == 'no'
      return 'n'
    else
      prompt(MSG['invalid_go_again_answer'])
      go_again_answer = gets.chomp
    end
  end
end

prompt(MSG['welcome'])

# MAIN LOOP
loop do
  prompt(MSG['player_go'])
  choice = gets.chomp
  choice = validate_player_choice(choice).downcase
  prompt("You chose #{choice.upcase}.
  ") # closing brace is on new line to give a line break in output formatting before next questions.

  prompt(MSG['help_comp'])
  enter = gets.chomp
  continue?(enter)

  comp_choice = RPS.sample
  prompt("Computer chose: #{comp_choice.upcase}.
  ") # closing brace is on new line to give a line break in output formatting before next questions.

  print_win_msg(choice, comp_choice)

  prompt(MSG['go_again?'])
  go_again_answer = gets.chomp
  break unless go_again?(go_again_answer).downcase == 'y'
end # end main loop
