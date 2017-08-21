#Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

#Input: Firt input must be a 'String' and the second must be a 'Number'
#Output: The output should be of the data type "String"
#Rules: The first input of the method should be a string and the second must be a POSITIVE integer.
#Algorithm:
#- Validate first input is a string, solicit input using a loop.
#- Validate second input using a string, solicit input using a loop.
#- Use a while loop to dictate how many times string should be printed.


def repeat(string, number)
  loop do 
    puts "Checking string validation"
    break if string.is_a? String
    puts "String not valid! Please enter a valid string!"
    string = gets.chomp
  end
  puts "String valid!"
  
  loop do 
    puts "Checking number validation"
    break if (number.is_a? Numeric) && (number > 0)
    puts "Number not valid! Please enter a valid number!"
    number = gets.chomp.to_i
  end
  puts "Number valid!"
  
  number.times do
    puts string
  end
  
end

repeat("hello", 0)