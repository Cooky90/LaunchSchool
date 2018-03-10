def century(year)
  century = (year/100.to_f).ceil.to_s
  
  if ["11","12","13"].include?(century.to_s.chars.last(2).join)
   return century + "th"
  else
    case century.to_s[-1]
    when '1'
      return century.to_s + "st"
      when '2'
      return century.to_s + "nd"
      when '3'
      return century.to_s + "rd"
    else
      return century.to_s + "th"
    end
  end
end

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(1) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'