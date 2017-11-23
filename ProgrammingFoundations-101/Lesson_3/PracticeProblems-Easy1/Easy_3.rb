advice = "Few things in life are as important as house training your pet dinosaur."

advice.sub!(/important/, 'urgent')
puts advice

# Can also use gsub! gsub replaces all occurances,
# while sub only replaces first occurance.