def find_fibonacci_index_by_length(integer)
  current_number = 1
  last_number = 1
  iterations = 2
  loop do
    iterations += 1
    old_cn = current_number
    current_number += last_number
    last_number = old_cn
    break if current_number.abs.digits.count == integer
  end
  iterations
end

find_fibonacci_index_by_length(2)
find_fibonacci_index_by_length(2) == 7
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847