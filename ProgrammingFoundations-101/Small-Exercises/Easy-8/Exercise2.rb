def prompt(string)
  puts ">> #{string}"
end

prompt('Enter a noun:')
noun = gets.chomp

prompt('Enter a verb:')
verb = gets.chomp

prompt('Enter a adjective:')
adjective = gets.chomp

prompt('Enter a adverb:')
adverb = gets.chomp

puts "Do you #{verb} your #{adjective + ' ' +noun} #{adverb} ? That's hilarious"