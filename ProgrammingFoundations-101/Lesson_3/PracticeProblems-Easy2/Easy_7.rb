# Instead of only adding Dino, add Dino AND Hoppy

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push('Dino', 'Hoppy')

puts flintstones

# Note, you can also concatenate two arrays to add new elements, in which a 
# new array is created and is assigned to the var.
flintstones += ['Dino','Hoppy']

puts flintstones