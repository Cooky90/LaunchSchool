require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

FIRST_MOVE = 'choose'

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(array, delimiter = ', ', between_last_two = 'or')
  if array.size == 2
    delimiter = ' '
  end
  array[-1] = "#{between_last_two} #{array[-1]}" unless array.size == 1
  array.join(delimiter)
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  system "clear"
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
end
# rubocop: enable Metrics/AbcSize

def initalise_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square: #{joinor(empty_squares(brd))}")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry, that's not a valid choice.")
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square
    square = 5 if empty_squares(brd).include?(5)
  else
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def score_count(winner, score_hash)
  if score_hash.key?(winner)
    score_hash[winner] += 1
  else
    score_hash['Player'] = 0
    score_hash['Computer'] = 0
    score_hash[winner] += 1
  end
end

def display_score(score_hash)
  score_hash.each do |player, score|
    puts "#{player} : #{score}"
  end
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def place_piece!(brd, current_player)
  if current_player == 'player'
    player_places_piece!(brd)
    display_board(brd)
  elsif computer_places_piece!(brd)
  display_board(brd)
  end
end

def alternate_player(current_player)
  current_player == 'player' ? 'computer' : 'player'
end

loop do
  score_hash = {}
  current_player = FIRST_MOVE
  puts "The first player to win five games wins overall!\n\n"
  until score_hash.value?(5)
    board = initalise_board
    loop do
      if current_player == 'choose'
        prompt "Select who will go first, 'player' or 'computer'"
        loop do
          current_player = gets.chomp.downcase
          break if current_player == 'player' || current_player == 'computer'
          prompt "Invalid selection. Please choose either 'player' or 'computer'"
        end
      end
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      puts "Current Score(first to 5 wins):" unless score_hash.empty?
      display_score(score_hash)
      break if someone_won?(board) || board_full?(board)
    end

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      score_count(detect_winner(board), score_hash)
    else
      prompt "It's a tie!"
    end
  end
  display_score(score_hash)
  prompt "#{detect_winner(board)} wins overall!"
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "Thanks for playing!"
