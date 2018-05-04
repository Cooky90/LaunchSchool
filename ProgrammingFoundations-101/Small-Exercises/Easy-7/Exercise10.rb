def penultimate(string)
  string.split[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

# Further Exploration #

def middle_word(string)
  middle = ((string.split.size).to_f/2).round
  string.split[middle - 1]
end

middle_word('hello this is a test')
middle_word('')
