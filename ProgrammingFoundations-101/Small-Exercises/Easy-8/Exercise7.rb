def repeater(string)
  new_string = ''
  string.chars.each { |letter| new_string << letter * 2 }
  new_string
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''