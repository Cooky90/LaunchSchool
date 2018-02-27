array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# What will the code print?

# Curly, Shemp and Chico will be output as upcased characterrs due to the objects being mutated. An array and
# it's objects are two different things still!