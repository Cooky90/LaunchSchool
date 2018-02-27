#number = 1

#until number > 99
#  puts "#{number}\n\n" if number.odd?
#  number += 1
#end

# Alternative Method

1.upto(99) do |x| 
  puts x if x.odd?
end