Question 1:

The select method returns all the collection in an array, although the last line in the
method is 'hi', the truthiness of this statement returns true which is why all the elements are 
evaluated as being true. If the 'hi' is removed , the last line is num > 5, as none meet this
statement an empty array would be returned. #Select EVALUATES the truthiness of the block!

Question 2:
After referring to the documentation for the #count, as long as the element has a true value
then it increments the count value. Therefore count evaluates the truthiness of the block's
return value.

Question 3:
The documentation for the reject method states that it returns an array for all the elements
for which the given block returns false/nil.

As puts returns nil then the element is added to the array that is returned. So if false was
the last line of code in the block all the elements would be returned again. This is because it
is evaluated as being falsey, if the last line was true then an empty array would be returned
as when the block is being evaluated each time the return value status would be one of a truthy.

#IMPORTANT TO READ THE DOCUMENTATION CLOSELY OR YOUR UNDERSTAND CAN GET MUDDLED!!!

Question 4:
#each_with_object return a hash populated with a key and value pair. The block is used in the
following way, hash references the hash, then [value[0]] references what will be set as the key and
the [0] means the first index of each string in the array will be used as the key. The '= value'
is used to assign that string, as value references the whole string it now is assigned to each key.

Question 5:
The shift method is used on a hash, in order to find out what it does we can consult
the official Ruby documentation. The documentation states that hash#shift removes a key-value pair
and returns it in a two-item array. So from the provided code we can expect the method to 
return '['a','ant']'. Note, this method is destructive so it will no longer be present in the hash.

Question 6:
The return value will be 11, this is because .pop remove and returns the last element and the 
size method will return the amount of characters in the string which is 11.

Question 7:
The block's return value is either true of false depending on the value of the num value.
The return value of any is determined is ANY of the block return values return true, if so
 then any returns true.
 
Question 8:
By reading the documentation, we can see that array#take takes the first n elements passed to the
method, it returns these elements in a new array. So no, it is not destructive.

Question 9:
A hash is passed to the map method but an array is returned. The first if condition returns
false so only the second value keeps it's value. When an if condition isn't met, it returns nil
and that is why the first value is 'nil' in the array.

If your if statement doesn't result in any code being run, it returns nil.

Question 10:
The method returns [1,nil,nil] as if the number is more than 1 the last line of code in that 
branch is puts num and as puts returns nil 2 and 3 return nil. Num is returned in the
else branch and hence why 1 is returned.