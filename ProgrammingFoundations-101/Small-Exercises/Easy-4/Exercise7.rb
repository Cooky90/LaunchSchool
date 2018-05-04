DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}
## ^^ Create a constant variable hash containing key-value pairs consisting of strings => integer values.

def strings_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] } # map a new array, iterate through each char(string in this case), DIGITS[char] will return the value for that key from the hash.
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
# Each integer is then iterated through and value is then the value + the current digit iteration * 10. This only applies to base 10 numbers.
  value
end

def string_to_signed_integer(string)
  if string[0] == '-' 
    string[0] = ''
    -strings_to_integer(string)
  elsif string[0] == '+'
    string[0] = ''
    strings_to_integer(string)
  end
end

string_to_signed_integer('-10')