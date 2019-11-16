# bonus_rps.rb

RPS = ["rock", "paper", "scissors", "spock", "lizard"]

require 'yaml'
MSG = YAML.load_file('msg_rps.yml')

def prompt(message)
  puts "=> #{message}"
end

def validate_player_choice(choice)
  loop do
    choice = choice.downcase
    case choice
    when "r"
      return "rock"
    when "p"
      return "paper"
    when "sc"
      return "scissors"
    when "sp"
      return "spock"
    when "l"
      return "lizard"
    when "s"
      prompt(MSG['clarify_s'])
      choice = gets.chomp
    else
      prompt(MSG['invalid_player_choice'])
      choice = gets.chomp
    end
  end
end

wins = {
  "rock" => ["scissors", "lizard"],
  "paper" => ["rock", "spock"],
  "scissors" => ["paper", "lizard"],
  "lizard" => ["spock", "paper"],
  "spock" => ["scissors", "rock"]
}

def print_round_winner(wins, choice, comp_choice)
  if wins[choice].include?(comp_choice)
    prompt(MSG['player_wins_round'])
  elsif wins[comp_choice].include?(choice)
    prompt(MSG['comp_wins_round'])
  else
    prompt(MSG['tie'])
  end
end

comp_score = 0
player_score = 0

def print_match_winner(comp_score, player_score)
  if comp_score == 5
    prompt(MSG['computer_wins_match'])
  elsif player_score == 5
    prompt(MSG['player_wins_match'])
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

def start_another_match?(answer)
  loop do
    answer = answer.downcase
    if answer == 'y' || answer == 'yes'
      return 'y'
    elsif answer == 'n' || answer == 'no'
      return 'n'
    else
      prompt(MSG['invalid_start_another_match?_answer'])
      answer = gets.chomp
    end
  end
end

def clear
  system("cls") || system("clear")
end

prompt(MSG['welcome'])

# MAIN LOOP
loop do
  prompt(MSG['player_go'])
  choice = gets.chomp
  choice = validate_player_choice(choice).downcase

  comp_choice = RPS.sample

  prompt("You chose #{choice.upcase}; Computer chose: #{comp_choice.upcase}.
  ") # line break in output formatting before next questions.

  print_round_winner(wins, choice, comp_choice)

  if wins[choice].include?(comp_choice) # Player wins
    player_score += 1
  elsif wins[comp_choice].include?(choice) # Computer wins
    comp_score += 1
  end

  puts "Your score: #{player_score}"
  puts "Computer's score: #{comp_score}
  " # line break in output formatting before next questions.

  print_match_winner(comp_score, player_score)

  if player_score < 5 && comp_score < 5
    prompt(MSG['go_again?'])
    go_again_answer = gets.chomp
    break unless go_again?(go_again_answer).downcase == 'y'
  else
    prompt(MSG['start_another_match?'])
    answer = gets.chomp
    break unless start_another_match?(answer) == 'y'
  end

  if player_score == 5 || comp_score == 5
    player_score = 0
    comp_score = 0
  end
  
  clear
end # end main loop
