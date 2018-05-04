def fibonacci(n)
  first_num, second_num = [1,1] # this factors in the first two steps
  3.upto(n) do
     first_num,second_num = [second_num, first_num + second_num] # How this code works, first the code in the array is evaluated and executed then the assignment occurs.
  end
  second_num
end

fibonacci(20) == 6765