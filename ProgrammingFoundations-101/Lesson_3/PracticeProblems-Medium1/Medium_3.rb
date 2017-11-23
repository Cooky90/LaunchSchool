def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

puts factors(66)

# Bonus 1 : This is the modular operator and will divide two numbers
# by theirselves and return the remainder. so number % divided == 0
# would finding numbers that leave no remainder i.e. factors.

#Bonus 2: The divisors on its own before the end keyword simply returns the 
# variable 'divisors'.