def word_sizes(string)
  hash = {}
  string.split.each do |word|
    word = word.delete('^A-Za-z') # ^ negates these characters, so in this cases delete all chars except A-Za-z
    if hash.has_key?(word.length) 
      hash[word.length] += 1
    else
      hash[word.length] = 1
    end
  end
  hash
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}