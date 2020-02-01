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

player = 0
dealer = 0

def initialize_deck
  arr = []
  (2..10).each do |num|
    arr << num
  end
  arr << "Jack" << "Queen" << "King" << "Ace"
  deck = [arr, arr, arr, arr].flatten!
end
=begin
deck_2 = [
  2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace",
  2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace",
  2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace",
  2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"
]
=end

deck = initialize_deck

def deal(deck)
  player_card_1 = deck.delete_at(rand(deck.length))
  dealer_card_1 = deck.delete_at(rand(deck.length))
  player_card_2 = deck.delete_at(rand(deck.length))
  dealer_card_2 = deck.delete_at(rand(deck.length))
  dealt_hands = {
    player_hand: [player_card_1, player_card_2],
    dealer_hand: [dealer_card_1, dealer_card_2]
  }
end

def player_takes_turn(deck, player_hand)
  loop do
    print_hit_or_stay?
    answer = gets.chomp
    if answer == "stay"
      return "stay"
    elsif answer == "hit"
      player_hand << hit(deck)
      print_hand(player_hand)
      if bust?(player_hand)
        player_bust_msg
        return "bust"
      end
    end
  end
end

def dealer_takes_turn(deck, dealer_hand)
  loop do
    if bust?(dealer_hand)
      dealer_bust_msg
      return "bust"
    end
    p dealer_hand
    if card_values(dealer_hand).include?("Ace")
      hand.delete("Ace")
      ace_11 = 11
      ace_1 = 1
    return "stay" if dealer_hand.sum >= 17
    dealer_hand << hit(deck)
    print_hand(dealer_hand) # delete this line after testing complete
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

  if face_cards != nil
    hand = (num_cards << face_cards).flatten!
  else
    hand = num_cards
  end
end

def determine_ace_value(hand)
  if hand.include?("Ace")
    hand.delete("Ace")
    if hand.sum + 11 > 21
      return 1
    else
      return 11
    end
  end
  return 0
end

def bust?(hand)
  hand = card_values(hand)

  if hand.include?("Ace")
    hand.delete("Ace")
    ace_11 = 11
    ace_1 = 1
    if hand.sum + ace_11 > 21
      hand.sum + ace_1 > 21
    else
      hand.sum + ace_11 > 21
    end
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
  p player_hand
  p dealer_hand
  if player_hand.sum > dealer_hand.sum
    return "player"
  elsif dealer_hand > player_hand
    return "dealer"
  else
    return "tie"
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
    puts "Play again? (y/n):"
    answer = gets.chomp
    if answer == "y" || answer || "yes"
      return "y"
    elsif answer == "n" || answer == "no" || answer == "exit"
      return "n"
    else
      puts "Invalid."
    end
  end
end

loop do # Main loop
  system("clear")

  puts "Welcome to Twenty-One!"
  loop do
    puts "Hit 'Enter' for dealer to deal cards..."
    enter = gets
    break if enter == "\n"
  end

  dealt_hands = deal(deck)
  dealer_hand = dealt_hands[:dealer_hand]
  player_hand = dealt_hands[:player_hand]
  puts "Your hand: #{player_hand[0]}, #{player_hand[1]}"
  puts "Dealer's face-up card: #{dealer_hand[0]}"

  if player_takes_turn(deck, player_hand) == "bust"
    break if play_again? == "n"
    next
  else
    if dealer_takes_turn(deck, dealer_hand) == "bust"
      break if play_again == "n"
      next
    else
      puts "Your hand: #{player_hand}"
      puts "Dealer's hand #{dealer_hand}"
      winner = determine_winner?(player_hand, dealer_hand)
      print_winner(winner)
      break if play_again? == "n"
      next
    end
  end
end
