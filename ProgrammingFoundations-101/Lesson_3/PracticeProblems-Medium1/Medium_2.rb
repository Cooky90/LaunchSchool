#The result of the following statement will be an error:

#puts "the value of 40 + 2 is " + (40 + 2)
#Why is this and what are two possible ways to fix this?

#----------------------------------------------------------------

# The reason why this would bring up an error is because
# this statement is trying to use the addition operator
# on a string data type and a integer data type.

# To fix this:

# First do the sum, then convert that to a string.

 puts "the value of 40 + 2 is " + (40 + 2).to_s

# The second method would be to use string interpolation.

puts "the value of 40 + 2 is #{40 + 2}"
