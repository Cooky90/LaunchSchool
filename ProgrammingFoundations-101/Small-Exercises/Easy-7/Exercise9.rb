def multiply_all_pairs(array1,array2)
  result = []
  array1.each do |element1|
    array2.each do |element2|
      result << element1 * element2
    end
  end
  result.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]