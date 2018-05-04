def rotate_array(array)
  new_array = []
  last_value = array[0]
  array.map.with_index {|element,index| new_array << element if index != 0}
  new_array << last_value
end

rotate_array([7, 3, 5, 2, 9, 1])

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# Further exploration # Write a method for rotating strings and then integers. Can use rotate array method.

def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_string('hello')

def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

p rotate_integer(123)

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

p rotate_rightmost_digits(735291, 1)
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917