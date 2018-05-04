def multiply_list(array_list1, array_list2)
  new_array = array_list1.map.with_index do |element,index|
    element * array_list2[index]
  end
  new_array
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Further exploration with zip

def multiply_list_zip(array1,array2)
  array1.zip(array2).map {|element| element.reduce(:*)}
  # array 1's element would be spread out into three arrays, 3,5 and 7 being the first elements. Zip then iterates through the argument
  # and mergers these elements into array1 one by one. The documentation then states if a block is given it invoked for EACH ARRAY, so in this case
  # the combined arrays we have now created.
end

multiply_list_zip([3, 5, 7], [9, 10, 11]) == [27, 50, 77]