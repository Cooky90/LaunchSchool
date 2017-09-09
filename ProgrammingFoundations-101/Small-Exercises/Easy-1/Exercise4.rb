# Write a method that counts the number of occurrences of each element in a given array.

# Input:Array of strings
# Output:Hash with key(e.g. car), values (occurances)
# Rules: Array of vechiles provided, each occurance in the array must be counted, hash returned as output
# Algorithm: -Create a new hash with a default value of "0"
#-Iterate through the array and increment for each key e.g. hash[key] = value




vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurance(vehicles)
  occurances = Hash.new (0)
  
  vehicles.each do |key|
    occurances[key] += 1
  end
  
  occurances.each do |key,value|
    puts "Vehicle: #{key}, Occurances: #{value}"
  end
end

count_occurance(vehicles)