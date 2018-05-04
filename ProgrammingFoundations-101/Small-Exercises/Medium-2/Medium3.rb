def letter_percentages(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0}

  string.chars.each do |char|
    if char =~ /[a-z]/
      hash[:lowercase] += 1
    elsif char =~ /[A-Z]/
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end

  hash[:lowercase] = (hash[:lowercase].fdiv(string.length)) * 100
  hash[:uppercase] = (hash[:uppercase].fdiv(string.length)) * 100
  hash[:neither] = (hash[:neither].fdiv(string.length)) * 100
  hash
end

p letter_percentages('abCdef 123')
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }