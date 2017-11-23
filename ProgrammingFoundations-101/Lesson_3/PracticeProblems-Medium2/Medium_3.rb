# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# The String: The string is passed to the method, within the method the += operation
# is used which concatenates the strings, but it does NOT mutate the string. So when
# the string is output at the end the changes are not present. Mutating
# method would have had to have been used for the changes to take effect. By using the =+ 
# method, it is reassigning and is therefore creating a new object with a new id. My_string and
# a_string_param no longer point to the same object.

# The Array: The array object on the other hand uses the '<<' operator which mutates the
# array and so the changes take effect. So the same object is being used.

# Both methods do the same thing, but one is applying the changes to a new object and
# and that is why the changes do not apply outside the method.