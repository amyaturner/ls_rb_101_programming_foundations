# Tic Tac Toe

EMPTY = ' '
WINNING_SQUARES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [3, 5, 7]]

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

# rubocop:disable Metrics/LineLength
def initialize_board
  new_board = {}
  (1..9).each { |square| new_board[square] = EMPTY }
  new_board # { 1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => ' ', 6 => ' ', 7 => ' ', 8 => ' ', 9 => ' ' }
end
# rubocop:enable Metrics/LineLength

def x_or_o?
  loop do
    puts "Choose Xs or Os (enter 'x' or 'o'):"
    player = gets.chomp.downcase
    if player == 'exit'
      exit
    elsif player == 'x' || player == 'o'
      puts "
You chose #{player.capitalize}s."
      loop do
        puts "Please hit 'Enter' to continue..."
        continue = gets
        if continue.chomp.downcase == 'exit'
          exit
        elsif continue == "\n"
          return player
        else
          puts "Invalid."
        end
      end
    else
      puts "Invalid choice."
    end
  end
end

def player_choose_square
  square = 0
  loop do
    puts "Choose an empty square on the board (Enter a number: 1-9):"
    square = gets.chomp.downcase
    if square == 'exit'
      exit
    elsif square.to_i.between?(1, 9)
      return square.to_i
    else
      puts "Invalid."
    end
  end
end

def place_square!(brd, player)
  loop do
    square = player_choose_square
    if brd[square] == EMPTY
      brd[square] = player
      break
    else
      puts "That square is already taken."
      next
    end
  end
end

def hit_enter_for_computer_to_go(brd, computer, player)
  loop do
    puts "Please hit 'Enter' for the computer to take its turn."
    continue = gets
    if continue.chomp.downcase == "exit"
      exit
    elsif continue == "\n"
      computer_take_turn!(brd, computer, player)
      break
    else
      puts "Invalid."
    end
  end
end

def computer_take_turn!(brd, computer, player)
  loop do
    square = nil

    # offensive move
    if !square
      WINNING_SQUARES.each do |line|
        square = find_at_risk_square(line, brd, computer)
        break if square
      end
    end

    # defensive move
    WINNING_SQUARES.each do |line|
      square = find_at_risk_square(line, brd, player)
      break if square
    end

    if !square
      if brd[5] == EMPTY
        brd[5] = computer # take square #5 if empty
        break
      end
      square = brd.keys.sample
      if brd[square] == EMPTY
        brd[square] = computer
        break
      else
        next
      end

    elsif square
      brd[square] = computer
      break

    elsif brd.values.all? { |v| v != EMPTY }
      break

    else
      next
    end # end if

  end # end loop
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select{ |k, v| line.include?(k) && v == EMPTY }.keys.first
  else
    nil
  end
end

def board_full?(brd)
  brd.values.all? { |v| v != EMPTY }
end

def winner?(brd, player, computer)
  !!get_winner(brd, player, computer)
end

def get_winner(brd, player, computer)
  winner = nil
  WINNING_SQUARES.each do |line|
    if brd.values_at(*line).all? { |v| v == player }
      winner = player
    elsif brd.values_at(*line).all? { |v| v == computer }
      winner = computer
    end
  end
  winner
end

def go_again?(answer)
  loop do
    answer_enter = answer
    answer = answer.chomp.downcase
    if answer == 'y' || answer == 'yes' || answer_enter == "\n"
      return 'y'
    elsif answer == 'n' || answer == 'no' || answer == 'exit'
      return 'n'
    else
      puts "Invalid. Do you want to play again? Please enter Y or N:"
      answer = gets
    end
  end
end

def start_another_match?(answer)
  loop do
    answer_enter = answer
    answer = answer.chomp.downcase
    if answer == 'y' || answer == 'yes' || answer_enter == "\n"
      return 'y'
    elsif answer == 'n' || answer == 'no' || answer == 'exit'
      return 'n'
    else
      puts "Invalid. Do you want to start another match? Please enter Y/N."
      answer = gets
    end
  end
end

player_score = 0
comp_score = 0

def print_match_winner(name, comp_score, player_score)
  if comp_score == 5
    puts "Computer won the match!"
  elsif player_score == 5
    puts "You won the match, #{name}! Nice Job!"
  end
end

system("clear")
puts "Welcome to Tic Tac Toe! (You may enter 'exit' at any time.)"

puts "What is your first name?"
name = gets.chomp
if name.downcase == 'exit'
  exit
end

puts "
Hi #{name}!"

player = x_or_o?.upcase

if player == 'X'
  computer = 'O'
else
  computer = 'X'
end

# BEGIN MAIN LOOP
loop do
  board = initialize_board

  display_board(board)

  loop do # BEGIN 'TAKE TURNS' LOOP
    place_square!(board, player)
    display_board(board)
    break if winner?(board, player, computer) || board_full?(board)
    hit_enter_for_computer_to_go(board, computer, player)
    display_board(board)
    break if winner?(board, player, computer) || board_full?(board)
  end # END 'TAKE TURNS' LOOP

  if winner?(board, player, computer)
    winner = get_winner(board, player, computer)
    if winner == player
      player_score += 1
      puts "You won!"
    elsif winner == computer
      comp_score += 1
      puts "Computer won!"
    end
  else
    puts "It's a tie!"
  end

  puts "Your score: #{player_score}"
  puts "Computer's score: #{comp_score}
  " # line break in output formatting before next questions.

  print_match_winner(name, comp_score, player_score)

  if player_score < 5 && comp_score < 5
    puts "Do you want to play again? Y/N:"
    answer = gets
    break unless go_again?(answer).downcase == 'y'
  else
    puts "Would you like to start another match? Y/N:"
    answer = gets
    break unless start_another_match?(answer) == 'y'

    player_score = 0
    comp_score = 0

    puts "" # Extra line
    player = x_or_o?.upcase

    if player == 'X'
      computer = 'O'
    else
      computer = 'X'
    end
  end

  system("clear")
end # END MAIN LOOP
