VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def you_win?(player, computer, rules_lookup)
  if player != computer
    rules_lookup.each do |key, value|
      if player == key && value.include?(computer)
        return true
      end
    end
    false
  end
end

def display_results(player, computer, rules_lookup)
  puts "You chose #{player} and the computer chose #{computer}."
  if you_win?(player, computer, rules_lookup)
    puts "Player Won!"
  elsif you_win?(player, computer, rules_lookup) == false
    puts "Computer Won!"
  else
    puts "Draw!"
  end
end

def convert_shortcut(string)
  case string
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'sp'
    'spock'
  when 's'
    'scissors'
  when 'l'
    'lizard'
  end
end

puts "Welcome to Rock,Paper,Scissors,Spock,Lizard!
The first to five wins, wins the overall game!\n\n"

loop do
  player_score = 0
  computer_score = 0

  until player_score == 5 || computer_score == 5
    player_choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      prompt("You may use shortcuts if you wish.")
      prompt("'r' for rock, 'p' for paper, 's' for scissors,\
  'sp' for spock and 'l' for lizard")

      player_choice = Kernel.gets().chomp().downcase()
      player_choice = convert_shortcut(player_choice)

      if VALID_CHOICES.include?(player_choice)
        break
      else
        prompt("Something wrong your input!")
      end
    end

    computer_choice = VALID_CHOICES.sample

    rules = {
      "rock" => ['scissors', 'lizard'],
      "paper" => ['rock', 'spock'],
      "scissors" => ['paper', 'lizard'],
      "spock" => ['scissors', 'rock'],
      "lizard" => ['spock', 'paper']
    }
    system("clear")
    display_results(player_choice, computer_choice, rules)
    if you_win?(player_choice, computer_choice, rules)
      player_score += 1
    elsif you_win?(player_choice, computer_choice, rules) == false
      computer_score += 1
    end

    puts "\n-Current Score- \nPlayer Score: #{player_score}
Computer Score: #{computer_score}\n\n"

    if player_score == 5 && computer_score == 5
      puts "Final Result: Draw!"
    elsif player_score == 5
      puts "Final Result: Player Won!"
    elsif computer_score == 5
      puts "Final Result: Computer Won!"
    end
  end

  prompt("Do you want to play again?(Enter 'n' to quit!)")
  answer = Kernel.gets().chomp()
  break if answer.downcase() == 'n'
end

puts "\nThank you for playing!"
