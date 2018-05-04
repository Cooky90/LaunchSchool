def letter_case_count(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each do |character|
    if character.match(/[a-z]/)
      hash[:lowercase] += 1
    elsif character.match(/[A-Z]/)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end
  hash
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }