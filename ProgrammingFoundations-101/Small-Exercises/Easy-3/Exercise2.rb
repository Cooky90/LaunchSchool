def prompt(msg)
  puts "=> #{msg}"
end

prompt("Enter the first number:")
first_number = gets.chomp.to_i

prompt("Enter the second number")
second_number = gets.chomp.to_i

puts "#{first_number} + #{second_number} =  #{first_number + second_number}"

puts "#{first_number} - #{second_number} =  #{first_number - second_number}"

puts "#{first_number} * #{second_number} =  #{first_number * second_number}"

puts "#{first_number} / #{second_number} =  #{first_number / second_number}"

puts "#{first_number} % #{second_number} =  #{first_number % second_number}"

puts "#{first_number} ** #{second_number} =  #{first_number ** second_number}"