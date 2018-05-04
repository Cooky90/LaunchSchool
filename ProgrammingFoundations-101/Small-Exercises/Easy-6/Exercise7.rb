def halvsies(array)
  new_array_one = []
  new_array_two = []
  
  array.each_with_index do |element,index|
    if index + 1 <= (array.count.to_f / 2).round 
      new_array_one << element
    else
      new_array_two << element
    end
  end
  
  [new_array_one,new_array_two]
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]