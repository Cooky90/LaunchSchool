def leap_year?(year)
  if year % 400 == 0 && year > 1751
    return true
  elsif year % 100 == 0 && year > 1751
    return false
  else
    year % 4 == 0
  end
end