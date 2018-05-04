def uppercase?(string)
  string.chars.each do |letter|
    return false if letter.match(/[a-z]/)
  end
  true
end


uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true