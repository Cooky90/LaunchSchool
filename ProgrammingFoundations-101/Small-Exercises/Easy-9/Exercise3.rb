def negative(int)
  int.zero? ? int : - + int.abs
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby