def twice(int)
  return int * 2 if int.to_s.size < 2
  first_half = int.to_s.slice(0..(int.to_s.size/2) -1)
  second_half = int.to_s.slice((int.to_s.size/2)..-1)
  
  first_half == second_half ? int : int * 2

end


twice(37) 
twice(44)
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10