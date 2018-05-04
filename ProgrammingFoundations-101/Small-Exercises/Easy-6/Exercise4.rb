def reverse!(array)
  if array.size == 0
    return []
  end
  left_element = 0
  right_element = -1
  
  loop do
    break if left_element > array.size / 2 
    array[left_element], array[right_element] = array[right_element], array[left_element]
    left_element += 1
    right_element -= 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
list == ["abc"]

list = []
reverse!(list) # => []
list == []