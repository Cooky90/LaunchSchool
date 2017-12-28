Question 1:
Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
Turn this array into a hash where the names are the keys and the values are the positions in the array

##############################
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
count = 0

flintstones.each_with_object({}) do |flintstone,hash|
hash[flintstone] = count
count += 1
end 
##############################

Question 2:
Add up all the ages from the Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#############################
ages.values.reduce(:+)
#############################


Question 3:
Throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#############################
ages.reject do |k,v|
  v >= 100
end
#############################


Question 4:
Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
#############################
ages.values.min

--the min method is part of the enumerable module--
#############################


Question 5:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

Find the index of the first name that starts with "Be"
##############################
flintstones.each_with_index do |element,index|
  element[0,2] == 'Be'
end
##############################

Question 6:
Amend this array so that the names are all shortened to just the first three characters:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

##############################
flintstones.each do |element|
  element.replace (element[0,3])
end
##############################

Question 7:
Create a hash that expresses the frequency with which each letter occurs in this string:
EXAMPLE ANSWER!!

result = {}  #intialise an empty hash
letters = ('A'..'Z').to_a + ('a'..'z').to_a #assign an array of all upper and lower case letters 
letters.each do |letter| # iterate through letters, passes single letter to use in block
  letter_frequency = statement.scan(letter).count # scan checks for each letter 
  # and breaks it up from rest of the string, count then counts the frequency of this letter
  result[letter] = letter_frequency if letter_frequency > 0
  #as long as the freq is above 0 then a key of the letter is added to the hash with a value
  # of the frequency.
  
end
  
Question 9:
Create your own implementation of the Rails method, titleize.

words = "the flintstones rock".split(' ')

words.map! do |word| 
  word.capitalize
end

words.join(' ')

Question 10:
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key,value|
case value["age"]
  when 0...18
    value["agegroup"] = "kid"
  when 18...65
    value["agegroup"] = "adult"
  else
    value["agegroup"] = "senior"
  end
end

