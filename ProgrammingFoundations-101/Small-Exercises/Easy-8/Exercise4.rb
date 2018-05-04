def substrings_at_start(string, starting_index = 0)
  array = []
  (string.size).times { |n_time| array << string.slice(starting_index..n_time) }
  array
end

def substrings(string)
  counter = 0
  array = []
  until counter > string.size
    array << substrings_at_start(string,counter).reject(&:empty?)
    counter += 1
  end
  array.flatten
end

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

#So I came across a similar problem in a study session–hosted by Srdijan–which at the time completely baffled me. However this time I recognized the problem and was able to apply it, study sessions help immensely!

#Essentially it's an outer_loop that sets the boundary for the beginning of the string and the inner looper that sets the end of the string. The conditional attached to the end of the expression that appends the string to the array ensures that no nil values are returned when the last_index is reset to 0 each loop.

def substrings(str)
  arr = []
  0.upto(str.size - 1) do |first_index|
    0.upto(str.size - 1) do |last_index|
      arr << str[first_index..last_index] if first_index <= last_index
    end
  end
  arr
end