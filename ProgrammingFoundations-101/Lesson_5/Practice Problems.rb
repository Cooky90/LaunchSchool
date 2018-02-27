## Problem 1 ## 

arr = ['10', '11', '9', '7', '8']
arr.sort! do |a,b|
  b.to_i <=> a.to_i     # Must be converted to i otherwise string treats values char by char when <=> is comparing.
end

## Problem 2 ##

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |book|
  book[:published]  ## As the dates are strings we SHOULD have to convert them to integers as before
end                 ## BUT, as they contain four chars each, there is no issues sorting.

## Problem 3 ##

## For each of these collection objects demonstrate how you would reference the letter 'g'.

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].keys[0]

# Note #keys and #key are two seperate methods. #key returns key based on value passed to the method.
#keys returns an array of all the keys in a hash.

## Problem 4 ##
## For each of these collection objects where the value 3 occurs, 
## demonstrate how you would change this to 4.
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

## Problem 5 ## 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

## figure out the total age of just the male members of the family.
combined_age = 0
munsters.each do |key,value|
  combined_age += value["age"] if value["gender"] == "male"
end
puts "#{combined_age}"

## Problem 6 ## 
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key,value|
  puts "#{key} is a #{value["age"]}-year old #{value["gender"]}"
end

## Problem 7 ##

# Take note of whether a variable is being referenced, this the example
# arr[0] += 2 already has the variable a(a =2) referenced in that element.
# But this code is not altering a as it is not referenced! It is reassigning
# a new object in that index of the array. a is still 2!

## Problem 8 ##
# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
VOWELS = 'aeiou'
hsh.each do |key,value|
  split_chars = value.join.chars
    split_chars.each do |char|
      puts char if VOWELS.include?(char)
    end
end

# possible question, why didn't VOWELS = %w(aeiou) work??

## Problem 9 ##

#Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |array|
  array.sort do |a,b|
    b <=> a
  end
end

## Problem 10 ##

# Given the following data structure and without modifying the original array, use the 
# map method to return a new array identical in structure to the original but 
# where the value of each integer is incremented by 1.

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

## Problem 11 ##

# Given the following data structure use a combination of methods, 
# including either the select or reject method, to return a new array identical in 
# structure to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |array|
    array.select do |number|
      number % 3 == 0
    end
end

## Practice Problem 12 ##

# write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end

## ^^ hsh followed by, [item[0] refers to the first element from the array and is setting this as the key
## = item[1] is assign the second element in the array as the value

## Problem 13 ##

# Sort each sub-arry logically.
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |sub_array|
  sub_array.select do |number|
    number.odd?
  end
end

## Problem 14 ##

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |key,value| #iterate through key,value pairs.Focus is on the values.
  if value[:type] == 'fruit' # Reference the value, [key] == 'fruit' check i.e. hsh[key] = value
    value[:colors].map do |colour| # Use this value pair, to map new array with returned values.
                                   # Again, hash[key].map is being called here.
      colour.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end
  
## Problem 15 ## 

# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hash|
  hash.all? do |key,value|
    value.all? do |num|
      num.even?
    end
  end
end  

## Problem 16 ##


