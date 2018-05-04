def fizzbuzz(number1, number2)
  number1.upto(number2) do |i|
    if i % 3 == 0 
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else puts i
    end
  end
end

fizzbuzz(1, 15)