def oddities(array)
  array.select.each_with_index { |value,index| index.even?}
end

# Method chain works in the following way. 

# Array is passed to the select method, which is then in fact passed to the each_with_index
# method. So now each_with_index's block is run (see index included!) and whatever is
# passed back to the block is selected and a new array is returned.

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

# Further exploration.

def oddities(array)
  array.select.each_with_index { |value,index| index % 2 == 0}
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]

## ANOTHER USER'S SOLUTION ##
def oddities(array)
  flag = false
  array.select { flag = !flag }
end

# What is going on here?

# the flag variable is set to false. If you have a look at how the select method is used
# 'flag = !flag' essentially converts flag to the opposite (true in this case) with !flag (not false)
# and then through each iteration the flag will be the opposite of what it was previously.