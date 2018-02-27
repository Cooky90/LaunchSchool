def short_long_short(first_string,second_string)
  longest_string = ''
  shortest_string = ''
  
  if first_string.length > second_string.length
    longest_string = first_string
    shortest_string = second_string
  else
    longest_string = second_string
    shortest_string = first_string
  end
  
  shortest_string + longest_string + shortest_string
  
end

puts short_long_short('abc', 'defgh') 