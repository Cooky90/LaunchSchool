def word_sizes(string)
  hash = {}
  string.split.each do |word|
    if hash.has_key?(word.length) 
      hash[word.length] += 1
    else
      hash[word.length] = 1
    end
  end
  hash
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

## Important

hash = Hash.new(0) # would create a hash and initialise any key with 0 as the default value for that key.