# show two different ways to put the expected "Four score and " in front of it.

famous_words = "seven years ago..."

#famous_words.insert(0, "Four score and") # method 1

famous_words.prepend("Four score and ") # method 2

# examples suggested using --
## ""Four score and " << famous_words
## "Four score and" + famous_words
