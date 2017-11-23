# A) and B) will still have their original values. The values are changed within the methods BUT 
# only within the scope of the method. As the original object is never mutated in this method, 
# as soon as we are outside this method no changes take effect.

# C) on the other hand uses the destructive method, so the object is passed into the method and then
# gsub! changes that specific object, so even outside the scope of the method the changes
# still apply due to the mutation of the original object.