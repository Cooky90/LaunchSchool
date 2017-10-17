# Input: An array containing numbers.
# Output: A number
# Rules: The array will never be empty nor will anything other than positive integers be provided.
#        An average of all the numbers in the array is to be output.
# Algorithm: A sum counter variable to be set at 0. Iterate through the array and add to the sum counter.
#            The sum is then to be divided by the size of the array. This will then provide the average.

def average(array)
  
  sum = 0
  array.each do |element|
    sum = sum + element
  end
  puts "The sum is #{sum}"
  puts "The array size is #{array.size}"
  puts "The average is #{(sum / array.size)}"
  return (sum / array.size)
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40