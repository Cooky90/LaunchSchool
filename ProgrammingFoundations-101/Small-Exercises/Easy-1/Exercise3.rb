#Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

#Input:Number
#Output:Array
#Rules:Method takes one positive integer, and return a list of the digits in the number. 
#Algorithm:-Validate integer to make sure it is a positive integer
#-Use split method to split the number up, and return as an array of strings

def digit_list(number)
  loop do 
    puts "Validating number."
    break if number >= 0 
    puts "Number must be a positive integer! Please enter a positive integer:"
    number =  gets.chomp.to_i
  end
  puts "Number successfully validated"
  
  array = number.to_s.split(//)
  array.map! do |i|
    i.to_i
  end
    array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true