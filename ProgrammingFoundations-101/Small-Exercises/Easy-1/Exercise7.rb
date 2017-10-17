# Input: Number
# Output: String
# Rules: A number is passed to the method, then alternating 0s and 1s are returned based on the number given.
# =>    -The returned string must always start with a 0.
# Algorithm- Create an array to store the .push the 1s and 0s to.
# =>        - Validate input to ensure the number passed to method is not 0
# =>        - Add the first '1' to the array and decrease the number by 1.
# =>        - Loop until number == 0, alternate in the loop between adding 1s and 0s
# =>        -Decrease the number count by 1 everytime a 1 or 0 is added to the array

def stringy(number)
  result = []
  if number == 0
    puts 'Invalid number!'
  else
    result.push('1')
    number -= 1
  end
  
  until number == 0
  break if number == 0
  result.push('0')
  number -= 1
  
  break if number == 0
  result.push('1')
  number -= 1
  end
  
 puts result.join
  
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)