# Input: None
# Output: A string
# Rules: A method that generates a random age for Teddy, between 20 and 200.
# Algorithm: Create a method that puts string with variable place holder, use .random method to generate number.

def teddy_age(name='Teddy')
  loop do 
    puts "Please enter a name:"
    name = gets.chomp
    break if name.is_a? String
    "Please enter a valid name!"
  end
  
  if name == ''
    name = 'Teddy'
  end
  age = Kernel.rand(20..200)
  puts "#{name} is #{age} years old!"
end

teddy_age