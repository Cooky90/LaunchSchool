def calculate_square_sum(number)
  sum = 0
  1.upto(number) do |i|
    sum += i
  end
  (sum)**2
end

def calculate_sum_of_squares(number)
    sum = 0
  1.upto(number) do |i|
    sum += (i)**2
  end
  sum
end

def sum_square_difference(number)
  calculate_square_sum(number) - calculate_sum_of_squares(number)
end

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150
