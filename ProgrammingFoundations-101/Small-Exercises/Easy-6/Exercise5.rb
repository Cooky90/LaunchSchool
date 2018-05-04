def merge(first_array,second_array)
  
  until second_array.empty?
    first_array.push(second_array.shift)
  end
  
  first_array.uniq
end

merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]