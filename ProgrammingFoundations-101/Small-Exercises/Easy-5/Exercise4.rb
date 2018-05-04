def swap(string)
  string.split.each { |word| word[0],word[-1] = word[-1], word[0]}.join(" ")
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

#Further exploration:
#
# The method will not work not work as it does not have access to the original sting. The original method works because 
# the whole string is passed into the method. It is not going to return the word with modified characters!