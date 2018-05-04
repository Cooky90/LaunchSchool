def substrings_at_start(string, starting_index = 0)
  array = []
  (string.size).times { |n_time| array << string.slice(starting_index..n_time) }
  array
end

def substrings(string)
  counter = 0
  array = []
  until counter > string.size
    array << substrings_at_start(string,counter).reject(&:empty?)
    counter += 1
  end
  array.flatten
end

def palindromes(word)
  array = []
  substrings(word).each do |element|
   array << element if (element == element.reverse && element.size != 1) # && element == element.gsub(/(\'|\"|\.|\*|\/|\-|\\|\)|\$|\+|\(|\^|\?|\!|\~|\`)/,'*') && element.downcase.reverse == element.downcase
 end                                                                     # ^^ Uncommenting out this line solves the further exploration tasks, which is to ignore special characters.    
 array
end

palindromes('abcd') == []
p palindromes('madam') 
p palindromes('hello-madam-did-madam-goodbye')
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
