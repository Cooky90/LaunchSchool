def tricky_method!(a_string_param, an_array_param)
  a_string_param << "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method!(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
-------------------------------------------------------


Every language (Ruby included) provides ways and means of writing "clever" code that depends on some of the less obvious traits of the language.

Every good programmer practices these tricks...and then avoids them like the plague.

Clever programmers don't write "clever" code. They write explicit code that is easy to read, debug and modify as the requirements change.