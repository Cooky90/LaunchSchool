def rotate_rightmost_digits(num, rotate_n)
  num_string = num.to_s
  new_array = []
  result = ''
  nth_value = num_string.chars.reverse[rotate_n - 1]
  num_string.chars.reverse.map.with_index {|element,i| new_array << element if i != rotate_n - 1}.reverse
  new_array = new_array.reverse << nth_value
  new_array.each {|i| result << i}
  result.to_i
end

def max_rotation(number)
  count = number.to_s.size
  (count -1).times do
    number = rotate_rightmost_digits(number, count)
    p number
    count -= 1
  end
  p number
end

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845