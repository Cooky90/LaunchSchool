VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def you_win?(player,computer,rules_lookup)
 if player == computer then return 'Draw.'
  else
    rules_lookup.each do |key,value|
      if player == key && value.include?(computer)
        return "Player won." 
    else 
      return "Computer won."
    end
    end
  end
end

def display_results(player,computer,rules_lookup)
  puts "You chose #{player} and the computer chose #{computer}."
  puts you_win?(player,computer,rules_lookup)
end

def convert_shortcut(string)
  return 'rock' if string.starts_with?('r')
end

loop do
  player_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player_choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(player_choice)
      break
    else
      prompt("Something wrong your input!")
    end
  end

  computer_choice = VALID_CHOICES.sample
  
  rules = {
  "rock" => ['scissors', 'lizard']
  "paper" => ['rock', 'spock']
  "scissors" => ['paper', 'lizard']
  "spock" => ['scissors', 'rock']
  "lizard" => ['spock', 'paper']
  }

  display_results(player_choice, computer_choice, rules)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing!")
