# Input: A string
# Output: A String
# Rules: # The user is prompted to enter their name, they then do so.
        # They are to be greeted using the name provided.
        # If they enter their name with an '!' then they are greeted slightly different i..e 'Why are you shouting??!'
# Algorithm: # Assign name to variable.
             # Determine the last character of the string using [-1] to return last char of string.
             # If strings end with '!' then .upcase the whole string
             # Else prefix, 'Hello' onto the string.

def prompt
  puts"=>"
  gets.chomp
end

puts "What is your name?"
name = prompt

if name[-1] == '!'
        puts "HELLO #{name}. WHY ARE WE SCREAMING?".upcase
else
        puts "Hello #{name}"
end