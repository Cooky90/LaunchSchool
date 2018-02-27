def prompt(message)
  puts ">> #{message}"
end

prompt('Please enter a number larger than 0:')
number = ''
loop do 
  number = gets.chomp.to_i
  break if number > 0
  prompt('Sorry, that number is not acceptable.Try again')
end

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
answer = ''
loop do
  answer = gets.chomp
  break if answer.downcase == 's' || answer.downcase == 'p'
  prompt("Sorry, answer not acceptable, please enter 's' or 'p")
end

if answer.downcase == 's'
  total = 0
  1.upto(number) do |value|
    total += value
  end
  puts total
elsif answer.downcase == 'p'
  total = 1
  1.upto(number) do |value|
    total *= value
  end
  puts total
else
  puts "Error. Neither 's' or 'p' detected as the input."
end