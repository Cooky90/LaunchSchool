def double_consonants(string)
  string.chars.map{|letter| letter.match(/[aeiou\W\d]/i)? letter : letter * 2 }.join
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""