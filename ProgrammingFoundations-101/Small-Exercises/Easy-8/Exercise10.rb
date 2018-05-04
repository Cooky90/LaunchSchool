def center_of(string)
  middle_char = string.size/2
  
  if string.size.odd? 
    string[middle_char]
  else
    string[middle_char - 1] + string[middle_char]
  end
  
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'