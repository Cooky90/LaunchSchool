def mystery_math(string)
  
  puts string.gsub(/(\+|\-|\/|\*)/,'?')
  
end

mystery_math('4 + 3 - 5 = 2')
mystery_math('(4 * 3 + 2) / 7 - 1 = 1')

##### This only changes the first instance, yet the gsub changes every instance. 
#This example shows this better than my notes do.

def danish(string)
  
  puts string.sub(/\b(apple|blueberry|cherry)\b/, 'danish')
  
end

danish('An apple a day keeps the doctor away')
# -> 'An danish a day keeps the doctor away'

danish('My favorite is blueberry pie')
# -> 'My favorite is danish pie'

danish('The cherry of my eye')
# -> 'The danish of my eye'

danish('apple. cherry. blueberry.')
# -> 'danish. cherry. blueberry.'

danish('I love pineapple')
# -> 'I love pineapple'