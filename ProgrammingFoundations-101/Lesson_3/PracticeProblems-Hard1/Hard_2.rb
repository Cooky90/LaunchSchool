greetings = { a: 'hi'}
puts "greetings object id = #{greetings.object_id}"
informal_greeting = greetings[:a]
puts "greetings object id = #{greetings.object_id}"
puts "informal_greeting object id = #{informal_greeting.object_id}"
informal_greeting << ' there'
puts "greetings object id = #{greetings.object_id}"
puts "informal_greeting object id = #{informal_greeting.object_id}"

puts informal_greeting  #  => "hi there"
puts greetings

# Making sense of this exercise:

# To make this clear, if greetings was originally a String i.e 'hi' then all the object IDs would have been pointing to same 
# space in memory throughout the code.

# Here, greetings is in fact referencing a Hash object. When informal_greeting is intialised, it is NOT pointing at the Hash that is
# assigned to greetings. It is referncing and pointing at an object within the Hash(:a), and as it is another object it will have a 
# different object_id.

# Say for example, another element (:b) was added to the hash, even when the << operator is used for informal_greeting, the same 
# result would still occur. greetings woulld stil point at the hash object, informal_greeting would still point to the :a object
# within the hash and so it would have it's own object_id and the same would apply to :b.