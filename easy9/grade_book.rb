def get_grade(grade1, grade2, grade3)
  score = (grade1 + grade2 + grade3) / 3

  case 
  when 90 <= score && score <= 100
    'A'
  when 80 <= score && score < 90
    'B'
  when 70 <= score && score < 80
    'C'
  when 60 <= score && score < 70
    'D'
  when score < 60
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"