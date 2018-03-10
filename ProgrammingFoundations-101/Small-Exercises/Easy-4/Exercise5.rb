def multisum(number)
  sum = 0
  i = 0
  
  while i <= number do
    sum += i if i % 3 == 0 || i % 5 == 0
    i += 1
  end
  puts sum
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168