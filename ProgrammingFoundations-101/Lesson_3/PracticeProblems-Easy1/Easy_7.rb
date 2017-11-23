def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

eval(how_deep)

This gives us a string that looks like a "recursive" method call:

"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
If we take advantage of Ruby's Kernel#eval method to have it execute this string as if it were a "recursive" method call

eval(how_deep)
what will be the result?

ANSWER = 42