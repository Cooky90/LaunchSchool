# Input: Two integers/numbers
# Output: Multiple strings
# Rules:  The users age is entered after being prompted.
        # The wished age of retirement is also entered after being prompted to do so.
        # The year is output and the year of retirement and the user's age at the time of retirement.
# Algorithm: (Current age - retirement age) + current year = year of retirement.
        #    (Current age - retirement age) = remaining years to work
        
def number?(number)
  number.to_i.to_s == (number) || number.to_f.to_s == (number)
end

current_age = ''
retirement_age = ''

puts "Please enter your age:"
loop do
  puts">>"
  current_age = gets.chomp()
  break if number?(current_age) == true
  puts "Sorry, invalid data, please try again."
end

puts "What age would you like to retire?"
loop do
  puts">>"
  retirement_age = gets.chomp()
  break if number?(current_age) == true
  puts "Sorry, invalid data, please try again."
end

puts "The year is: #{Time.now.year}. You will retire in the year: #{(retirement_age.to_i - current_age.to_i) + Time.now.year}"
puts "You only have #{(retirement_age.to_i - current_age.to_i)} years left to work."
