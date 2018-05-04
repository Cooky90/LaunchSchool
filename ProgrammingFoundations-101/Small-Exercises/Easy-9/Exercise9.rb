def get_grade(grade1, grade2, grade3)
  average = (grade1+grade2+grade3)/3
  p average
  case average
  when 
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  else
    'F'
  end
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
p get_grade(500, 500, 95)