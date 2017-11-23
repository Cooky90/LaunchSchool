limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# The issue with the above code is that the limit variable is defined outside of the method,
# hence it is out of the scope of the method. It would need to be passed in via a method parameter, 
# or included within the method scope to be used.