# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

# Input: String
# Output: String
# Rules: A string must be given, a method must be written that returns the string with the words in reverse order.
# Algorithm:
# -Split the string using split method, no method argument.
# - Returned string, which is now an array is to be reversed. The reverse method for array reverses the order of the elements
# - Now the elements are joined, a string is returned with elements joined together with a whitespace acting as the delimiter.


def reverse_sentence(string)
  
  string.split.reverse.join(' ')
  
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'