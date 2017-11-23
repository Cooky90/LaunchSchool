advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(0, advice.index('house'))

# slice removes whatever is passed to it and also returns it
# slice! does the same but also mutates the original string