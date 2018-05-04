WORD_NUMBERS = {
  "one"  => '1',
  "two"  => '2',
  "three" => '3',
  "four"  => '4',
  "five"  => '5',
  "six" => '6',
  "seven" => '7',
  "eight" => '8',
  "nine" => '9'
}


def word_to_digit(string)
  string.gsub(/[.]/, ' .').split.map {|element| (WORD_NUMBERS.include? element) ? WORD_NUMBERS[element] : element}.join(' ').gsub(' .', '.')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'