VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def you_win?(player, computer, rules_lookup)
  if player == computer
  else
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
  if you_win?(player, computer, rules_lookup) == true
    puts "Player Won!"
  elsif you_win?(player, computer, rules_lookup) == false
    puts "Computer Won!"
  else
    puts "Draw!"
  end
end

def convert_shortcut(string)
  return 'rock' if string.start_with?('r')
  return 'paper' if string.start_with?('p')
  return 'spock' if string.start_with?('sp')
  return 'scissors' if string.start_with?('s')
  return 'lizard' if string.start_with?('l')
end

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

    display_results(player_choice, computer_choice, rules)

    if you_win?(player_choice, computer_choice, rules)
      player_score += 1
    elsif you_win?(player_choice, computer_choice, rules) == false
      computer_score += 1
    else
      player_score += 1 # This is accounting for a draw, by adding +1 to both.
      computer_score += 1
    end

    puts "\n-Current Score- \nPlayer Score: #{player_score}\nComputer Score: #{computer_score}\n"

    if player_score == 5 && computer_score == 5
      puts "Final Result: Draw!"
    elsif player_score == 5
      puts "Final Result: Player Won!"
    elsif computer_score == 5
      puts "Final Result: Computer Won!"
    end
  end

  prompt("Do you want to play again?(Enter 'y' or 'n')")
  answer = Kernel.gets().chomp()
  break if answer.downcase().start_with?('n')
end

puts "\nThank you for playing!"
