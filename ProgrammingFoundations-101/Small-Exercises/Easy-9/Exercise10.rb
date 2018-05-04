def buy_fruit(fruit_array)
  array = []
  fruit_array.each do |element|
    element[1].times {|i| array << element[0]}
  end
  array
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]