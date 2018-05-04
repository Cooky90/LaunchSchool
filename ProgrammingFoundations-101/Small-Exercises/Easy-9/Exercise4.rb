def sequence(int)
  array = []
  if int > 0
    1.upto(int) { |i| array << i }
    array
  else
    int.upto(0) { |i| array << i }
    array
  end
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

## Further Exploration ##
## ^^ See above method