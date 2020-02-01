# Twenty One

=begin
1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.
=end

def initialize_deck
  arr = []
  (2..10).each do |num|
    arr << num
  end
  arr << "Jack" << "Queen" << "King" << "Ace"
  deck = [arr, arr, arr, arr].flatten!
end

def deal(deck)
  player_cards = []
  dealer_cards = []
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end
  dealt_hands = {
    player_hand: player_cards,
    dealer_hand: dealer_cards
  }
end

def player_takes_turn(deck, player_hand)
  loop do
    print_hit_or_stay?
    answer = gets.chomp
    if answer == "stay" || answer == "s"
      if card_values(player_hand).include?("Ace")
        ace = determine_ace_value(player_hand)
        player_hand << ace
      end
      return "stay"
    elsif answer == "hit" || answer == "h"
      player_hand << hit(deck)
      print_hand(player_hand)

      if card_values(player_hand).include?("Ace")
        ace = determine_ace_value(player_hand)
        player_hand << ace
      end

      if bust?(player_hand)
        player_bust_msg
        return "bust"
      end
    end
  end
end

def dealer_takes_turn(deck, dealer_hand)
  puts ""
  puts "Dealer's cards:"
  print_hand(dealer_hand)
  puts ""

  loop do
    if card_values(dealer_hand).include?("Ace")
      ace = determine_ace_value(dealer_hand)
      dealer_hand << ace
    end

    if dealer_hand.sum >= 17
      card_values(dealer_hand)
      return "stay"
    end

    card = hit(deck)
    puts "Dealer hits:"
    p card
    dealer_hand << card
    puts ""
    puts "Dealer's cards:"
    print_hand(dealer_hand)
    puts ""
    if bust?(dealer_hand)
      dealer_bust_msg
      return "bust"
    end
  end
end

def print_hit_or_stay?
  puts ""
  puts "Hit or stay? (enter 'hit' or 'stay' then press Enter)"
end

def hit(deck)
  deck.delete_at(rand(deck.length))
end

def card_values(hand)
  face_cards = hand.select do |el|
                 el.is_a? String
               end

  face_cards.map! do |string|
    case string
    when "Jack"
      10
    when "Queen"
      10
    when "King"
      10
    when "Ace"
      "Ace"
    end
  end

  num_cards = hand.select do |el|
                el.is_a? Integer
              end

  hand.clear # empty the hand array destructively
  if !face_cards.nil?
    hand << num_cards << face_cards # add new values back to hand array destructively
    hand.flatten!
  else
    hand << num_cards
  end
end

def determine_ace_value(hand)
  hand.delete("Ace")
  if hand.sum + 11 > 21
    return 1
  else
    return 11
  end
end

def bust?(hand)
  hand = card_values(hand)

  if hand.include?("Ace")
    ace = determine_ace_value(hand)
    hand.sum + ace > 21
  else
    hand.sum > 21
  end
end

def player_bust_msg
  puts "You busted!"
end

def dealer_bust_msg
  puts "Dealer busted!"
end

def print_hand(hand)
  p hand
end

def determine_winner?(player_hand, dealer_hand)
  if player_hand.sum > dealer_hand.sum
    "player"
  elsif dealer_hand.sum > player_hand.sum
    "dealer"
  else
    "tie"
  end
end

def turn_aces_back_to_strings(player_hand, dealer_hand)
  if player_hand.include?(1) || player_hand.include?(11)
    player_hand.map! do |num|
      if num == 1 || num == 11
        "Ace"
      else
        num
      end
    end
  end

  if dealer_hand.include?(1) || dealer_hand.include?(11)
    dealer_hand.map! do |num|
      if num == 1 || num == 11
        "Ace"
      else
        num
      end
    end
  end
end

def print_winner(winner)
  if winner == "player"
    puts "You win!"
  elsif winner == "dealer"
    puts "Dealer wins!"
  else
    puts "It's a tie!"
  end
end

def play_again?
  loop do
    puts ""
    puts "Play again? (y/n):"
    answer = gets.chomp
    if answer == "y" || answer == "yes"
      return "y"
    elsif answer == "n" || answer == "no" || answer == "exit"
      return "n"
    else
      puts "Invalid."
    end
  end
end

system("clear")
puts "Welcome to Twenty-One!"

loop do # Main loop
  loop do
    puts "Hit 'Enter' for dealer to deal cards..."
    enter = gets
    break if enter == "\n"
  end
  
  deck = initialize_deck
  # deck = [
  # 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace",
  # 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace",
  # 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace",
  # 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"
  # ]
  deck.shuffle!

  dealt_hands = deal(deck)
  player_hand = dealt_hands[:player_hand]
  dealer_hand = dealt_hands[:dealer_hand]
  puts "Your hand: #{player_hand[0]}, #{player_hand[1]}"
  puts "Dealer's face-up card: #{dealer_hand[0]}"

  if player_takes_turn(deck, player_hand) == "bust"
    if play_again? == "n"
      break
    else
      system("clear")
      next
    end
  else
    if dealer_takes_turn(deck, dealer_hand) == "bust"
      if play_again? == "n"
        break
      else
        system("clear")
        next
      end
    else
      winner = determine_winner?(player_hand, dealer_hand)
      turn_aces_back_to_strings(player_hand, dealer_hand)
      print_winner(winner)
      puts "Your hand: #{player_hand}"
      puts "Dealer's hand #{dealer_hand}"
      if play_again? == "n"
        break
      else
        system("clear")
        next
      end
    end
  end
end
