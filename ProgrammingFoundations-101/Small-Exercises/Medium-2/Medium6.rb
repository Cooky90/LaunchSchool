def valid_triangle?(s1, s2, s3)
  180 == (s1+s2+s3) && (s1 != 0 && s2 != 0 && s3 != 0)
end

def triangle(s1, s2, s3)
  return :invalid unless valid_triangle?(s1, s2, s3)
  
  array = [s1,s2,s3]
  
  if array.include?(90)
    :right
  elsif s1 < 90 && s2 < 90 && s3 < 90
    :acute
  elsif array.count{|x| x > 90} == 1
    :obtuse
  end
  
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid