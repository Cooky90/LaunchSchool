# Input: Integer/number
# Output: A string with a variable interpolated within the string.
# Rules: The method must prompt the user for length and width of the room.
# =>     The area of the room must be output, along with the square feet measurement in brackets following the area.
# Algorithm: Output requirements to the client i.e. length and width.
# =>         Use gets method to save input to a variable, multiple length by width to get area(m).
# =>         The square feet measurement is calculated by multiplying the area(m) by 10.7639.

def calculate_area
  puts "Please enter the width:"
  width = gets.chomp.to_f
  puts "Please enter the length:"
  length = gets.chomp.to_f
  
  area = length * width
  square_meters_area = (area * 10.7639).round(2)
  puts "The area of the room is #{area} square meters (#{square_meters_area} square feet)."
  
end

calculate_area
