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

def hit_enter_for_computer_to_go(brd, computer)
  loop do
    puts "Please hit 'Enter' for the computer to take its turn."
    continue = gets
    if continue.chomp.downcase == "exit"
      exit
    elsif continue == "\n"
      take_turn!(brd, computer)
      break
    else
      puts "Invalid."
    end
  end
end

def take_turn!(brd, computer)
  loop do
    square = brd.keys.sample
    if brd[square] == EMPTY
      brd[square] = computer
      break
    elsif brd.values.all? { |v| v != EMPTY }
      break
    else
      next
    end
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
    if brd.values_at(line[0], line[1], line[2]).all? { |v| v == player }
      winner = player
    elsif brd.values_at(line[0], line[1], line[2]).all? { |v| v == computer }
      winner = computer
    end
  end
  winner
end

def go_again?(answer)
  loop do
    answer = answer.downcase
    if answer == 'y' || answer == 'yes'
      return 'y'
    elsif answer == 'n' || answer == 'no' || answer == 'exit'
      return 'n'
    else
      puts "Invalid. Do you want to play again? Please enter Y or N:"
      answer = gets.chomp
    end
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

# BEGIN MAIN LOOP
loop do
  player = x_or_o?.upcase

  if player == 'X'
    computer = 'O'
  else
    computer = 'X'
  end

  board = initialize_board

  display_board(board)

  loop do
    place_square!(board, player)
    display_board(board)
    break if winner?(board, player, computer) || board_full?(board)
    hit_enter_for_computer_to_go(board, computer)
    display_board(board)
    break if winner?(board, player, computer) || board_full?(board)
  end

  if winner?(board, player, computer)
    winner = get_winner(board, player, computer)
    if winner == player
      puts "#{name} won!"
    elsif winner == computer
      puts "Computer won!"
    end
  else
    puts "It's a tie!"
  end

  puts "Do you want to play again? Y/N:"
  answer = gets.chomp
  break unless go_again?(answer).downcase == 'y'

  system("clear")
end # end main loop
