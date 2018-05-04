def triangle(num)
  
  num.times do |iteration|
    string = ''
    string << ' ' * (num - (iteration + 1))
    string << '*' * (num - (string.count " "))
    puts string
  end
end

triangle(5)
triangle(9)