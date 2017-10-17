# Input: A positive integer/number
# Output: A number.integer
# Rules: The method must return the sum of the digits passed to it.
# Algorithm: Convert the numbers to string in order to use.chars method. This will 'split' the string.
# =>         Use map and shorthand to convert string to integers.
# =>         Can now use the reduce method to get the sum of all the integers.

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
  
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45