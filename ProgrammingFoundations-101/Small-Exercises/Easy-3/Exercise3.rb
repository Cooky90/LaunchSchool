def prompt(msg)
  puts "=> #{msg}"
end

prompt("Please write a word/multiple words:")
input_word = gets.chomp

puts "There are #{input_word.split.join.length} characters in #{input_word}"