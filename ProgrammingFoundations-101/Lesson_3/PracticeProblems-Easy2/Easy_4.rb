# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

puts advice.match("Dino")

# OR for a strong search

puts advice.match?(/Dino/i)### MATCH IS A RUBY 2.4.0 METHOD