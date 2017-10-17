# Input: String
# Output: String
# Rules: -If word has five or more letters than reverse, if not return as it is
# Algorithm- The input string must be split using the ' ' delimiter, so they're grouped into words.
# =>       - Iterate through each element and reverse if conditions are met, use destructive method to reverse.
#           - Validate the string, using the ''.is_a? String' method, use else statement to ensure string is given
#           - Return the string

def reverse_words(string)
  
  loop do
   break if string.is_a? String
   Kernel.puts "Invalid input, please enter a string:"
   string = gets.chomp()
 end
  new_string = string.split
  new_string.each do |word|
    if word.length > 4 
      word.reverse!
    end
  end
  new_string.join(' ')
end

puts reverse_words('hello chicken dog')
puts reverse_words('Professional') 
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
puts reverse_words(123)