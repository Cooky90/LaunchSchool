numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# #Uniq returns an array with all duplicates removed. This is never saved as
# a variable though. When numbers is puts it prints the original array. If
# #uniq! had been used then [1,2,3] would be printed as it would mutate the
# original array.
