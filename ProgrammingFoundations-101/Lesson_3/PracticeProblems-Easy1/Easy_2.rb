# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# 1 what is != and where should you use it?
# 2 put ! before something, like !user_name
# 3 put ! after something, like words.uniq!
# 4 put ? before something
# 5 put ? after something
# 6 put !! before something, like !!user_name

# If ! or ? are at the end of something then they are part of the method name.

# 1. '!=' is the opposite of ==, != means IS NOT EQUAL TO and would return true
# in the event of the two conditions not being equal to each other.

# 2. !<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.

# 3. Having '!' after a method suggests that the method is destructive, 
# this means that the data passed to the method can be mutated(changed perm)

# 4. ? : is the ternary operator for if...else

# 5. '?' after something generally is used when a method is asking a question,
# of something in the majority of case it will return a boolean value based on,
# the question.

# 6. !!<some object> is used to turn any object into their boolean equivalent.