def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  
  return false if dot_seperated_words.size != 4
  
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
    
  true
end

dot_seperated_ip_address?("192.168.111.7")

# The method had to be changed to return false when the string input was not seperated by four dots.
# #split would seperate them and put them into an array, so by checking the size of the array we would be able to know
# whether the right format had been input. If the size is wrong then the method returns false.

# The while loop checks each part of the array to ensure it is an ip number using the method that had been provided. If it does not
# return true for that method then our method will return false.

# Otherwise, if the data passed to the provided ip method returns true for each element then the method evaluates to true on the last
# line.