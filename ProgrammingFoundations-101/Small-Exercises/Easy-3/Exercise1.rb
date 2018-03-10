def prompt(msg)
  puts "=> #{msg}"
end
array = []
prompt("Enter the first number")
first_number = gets.chomp.to_i
array.push(first_number)

prompt("Enter the second number")
second_number = gets.chomp.to_i
array.push(second_number)

prompt("Enter the third number")
third_number = gets.chomp.to_i
array.push(third_number)

prompt("Enter the fourth number")
fourth_number = gets.chomp.to_i
array.push(fourth_number)

prompt("Enter the fifth number")
fifth_number = gets.chomp.to_i
array.push(fifth_number)

prompt("Enter the sixth number")
sixth_number = gets.chomp.to_i

if array.include?(sixth_number)
  puts "The number #{sixth_number} appears in #{array}" 
else
  puts "The number #{sixth_number} does not appear in #{array}" 
end