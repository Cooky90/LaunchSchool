#Write a method that takes one integer argument, which may be positive, negative, or zero. This method return true if the number's 
#absolute value is odd. You may assume that the argument is a valid integer value.

#Input- Number
#Output- Boolean
#Rules- Value passed to result, must either return true or false depending on whether the value is odd.
#Algorithm- Use modulus operator to check if number is divisble by 2 without a remainder
#- If no remainder, return false. If remainder then return true.

def is_odd(number)
  if number % 2 == 0
    return false
  else 
    true
  end
end

is_odd(5)
