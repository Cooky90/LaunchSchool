def diamond(num)
  star_count = 1
  while star_count < num
    whitespace_count = ((num - star_count) / 2)
    puts "#{' ' * whitespace_count}#{'*' * star_count}"
    star_count += 2
  end
  
  puts '*' * star_count

  until star_count == 1
    star_count -= 2
    whitespace_count = ((num - star_count) / 2)
    puts "#{' ' * whitespace_count}#{'*' * star_count}"
  end
end

diamond(11)

# Other user selection broken down for understanding #

def diamonds(size)
  lines = [] # creates an array to put each line into
  (1..size).step(2) do |stars|   # will jump from 1 , 3, 5 etc so these are the stars
   lines << (' ' * ((size - stars) / 2)) + ('*' * stars) #similar to how my method works, work out whitespace then concat the stars on top
 end

 lines += lines[0, size/2].reverse #this will add on elements, the first paramter is the starting point and the second paramter is the size/length

end