def you_win?(player, computer, rules_lookup)
  if player == computer 
    return
  else
    rules_lookup.each do |key, value|
      if player == key && value.include?(computer)
        puts "true #{key} and #{value}"
      else
        puts "false #{key} and #{value}"
      end
    end
  end
end
 rules = {
    "rock" => ['scissors', 'lizard'],
    "paper" => ['rock', 'spock'],
    "scissors" => ['paper', 'lizard'],
    "spock" => ['scissors', 'rock'],
    "lizard" => ['spock', 'paper']
  }
  puts you_win?('lizard','paper',rules)
  
  