def number_is_between(first_range, second_range, number)
 if (first_range...second_range).include?(number)
   puts "#{number} is between #{first_range} AND #{second_range}"
 else
   puts "#{number} is NOT between #{first_range} AND #{second_range}"
 end
end

number_is_between(10,100,42)

# Can also use #cover? method to check if object is between beg and end.