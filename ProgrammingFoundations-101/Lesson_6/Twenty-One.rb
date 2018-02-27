# Set constant variables for only possible card suits and values

SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', 'Q', 'K', 'J', 'A']

def prompt(msg)
  puts "=> #{msg}" #prefix infront of message to create prompt effect
end

def initialise_deck
  SUITS.product(VALUES).shuffle  # product method returns an array of possible combinations
end

def total(cards)
  values = cards.map { |card| card[1]} # map creates a new array of the values (card[1]) 
  
  sum = 0
  values.each do |value| # iterate through the values 
    if value == 'A'
      sum += 11          # ace defaults to 11, bust check later
    elseif value.to_i == 0  # if special card, returns 0 when to_i so +10
      sum += 10
    else
      sum += value.to_i  # otherwise add the card value to the sum
    end
  end
  
  #aces calculation to facor in busting
  values.select { |value| value == "A"}.count.times do # selects ace cards, returns amount via counts then applies block #n of times
    sum -= 10 if sum > 21 # ace = 1 IF it would result in bust otherwise
  end
end

def busted?(cards)
  total(cards) > 21
end

def detect_result(dealer_cards, player_cards)
  
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)
  
  if player_total > 21  # total return determines what detect_result outputs
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def displaye_result(dealer_cards, player_cards)

  result = detect_result(dealer_cards, player_cards)
  
  case result  # case statement that prompts depending on detect_result method
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "----------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with('y')
end

loop do
  prompt "Welcome to Twenty-One"
  
  deck = initialise_deck
  player_cards = [] # declare empty array ready for cards
  dealer_cards = [] # see above but for dealer