def running_total(array)
  total = 0
  array.each_with_object([]) do |value,new_array|
    total += value
    new_array << total
  end
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

