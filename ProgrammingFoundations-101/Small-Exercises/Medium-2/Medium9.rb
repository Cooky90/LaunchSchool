def bubble_sort!(array)
  x = (array.length - 1)  # This line sets the array element in a 0 based array
    
  loop do                 # create loop
    swapped = false       # set swapped var to false
    for i in 1..x do      # loop through array starting from second element
      if array[ i - 1] > array[i]   # if element before is larger then ...
        array[i - 1], array[i] = array[i], array[i - 1]  # ... the element before is swapped with current element
        swapped = true                                   # sets swapped variable to swapped if condition met
      end
    end
    
    break unless swapped    # goes through all the elements of the array again, until the swapped stays set as false
  end
  array
end

## my original solution would have worked, just need to complete the process a few times until no swaps were detected. Each method would have infact worked!


#array = [5, 3]
#bubble_sort!(array)
#array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
#bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)