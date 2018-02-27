name = 'Bob'
name.object_id
save_name = name
save_name.object_id
name = 'Alice'
name.object_id
puts name, save_name

#What does this code print and why?

# This code would print 'Alice' firstly. Firstly name is referencing the string object 'Bob', when it is
# reassigned later on in the code, it is pointing to a completly different string object (Alice). Hence
# why name prints out 'Alice' when called with the puts method.

# save_name prints out 'Bob' as it was assigned to name variable, which was pointing to a string 
# object 'Bob', when name gets reassigned this is irrelevant because it save_name is still pointing to 
# the previous object! This is an example of variables as pointers.

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# In this example when name is called, it prints out BOB as upcase! mutates the name object. Then when
# save_name is assigned to name, it is pointing to the name object. When upcase! is called it mutates the
# object so that when save_name is called it also prints 'BOB'. 