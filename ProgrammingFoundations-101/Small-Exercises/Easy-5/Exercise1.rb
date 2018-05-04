def ascii_value(string)
  total = 0
  string.chars.each do |char|
    total += char.ord
  end
  total
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0