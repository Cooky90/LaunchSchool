def arrange_sides_by_size(s1,s2,s3)

	array = [s1,s2,s3]
	hash = {:shortest => 0, :middle => 0, :longest => 0}
	array.sort!
	hash[:shortest] = array[0]
	hash[:middle] = array[1]
	hash[:longest] = array[2]
	hash	 

end
arrange_sides_by_size(7,2,3)

def triangle(s1,s2,s3)

  sorted_lengths_hash = arrange_sides_by_size(s1,s2,s3)


  if ((sorted_lengths_hash[:shortest]) + (sorted_lengths_hash[:middle])) < sorted_lengths_hash[:longest] || sorted_lengths_hash.values.include?(0)
  	:invalid
  elsif ((s1 + s2 + s3) / 3) == s1
  	:equilateral
  elsif (s1 != s2 && s1 != s3) && (s2 != s3)
  	:scalene
  elsif sorted_lengths_hash.values.uniq.length != sorted_lengths_hash.values.length && sorted_lengths_hash.values.uniq.length != 1
  	:isosceles
  end
  
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid