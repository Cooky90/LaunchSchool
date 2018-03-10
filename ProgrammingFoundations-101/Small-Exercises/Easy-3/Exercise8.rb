def palindrome?(string)
  string.reverse === string
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

def palindrome?(array)
  array.reverse == array
end