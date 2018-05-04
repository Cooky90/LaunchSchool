def word_cap(string)
  new = string.split.map do |word|
    if word.match(/"([^"]+)"/)
      word
    else
      word[0].upcase!
    end
  end
  new.join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'