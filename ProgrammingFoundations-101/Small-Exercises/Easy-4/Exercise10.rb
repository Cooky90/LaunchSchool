CONVERT_KEY = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def signed_integer_to_string(integer)
  chars = integer.digits.map {|digit| CONVERT_KEY[digit]}
  chars.reverse.join('')
end

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

#def integer_to_string(integer)
#  chars = integer.digits.map {|digit| DIGITS[digit]}
#  chars.reverse.join('')
#end