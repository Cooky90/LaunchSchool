def xor?(comparison_one,comparison_two)
  truth_count = 0
  array = [comparison_one,comparison_two]
  array.each do |value|
    truth_count += +1 if value == true
  end
  
  if truth_count == 1
    return true
  else
    return false
  end
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false