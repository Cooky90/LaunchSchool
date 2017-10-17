# Input: Two arguments, an integer and a boolean value. 
# Output: An integer
# Rules: If the boolean is true, then half of the salary should equal the bonus, if false == 0.
# Algorithm: If statement to determine whether or not the salary is to be halved. 
# =>         If true, then half the salary, else return 0.

def calculate_bonus(salary,boolean)
  
  if boolean == true
    return (salary / 2) 
  else
    return 0
  end
  
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

#SUGGESTED SOLUTION # => USING THE TERNARY OPERATOR

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end