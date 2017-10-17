# Input: Two integers/numbers
# Output: A string with a variable interpolated
# Rules: The bill and the tip are taken and then the tip cost and total overall cost are output.
# Algorithm: Use puts to ask client for bill and tip. Use gets to get data and save to variables.
# =>         Calculate the tip cost, bill / 100 * tip, save to a vaiable then add this onto the bill to get the total cost.

def bill_calc
  puts "What is the cost of the bill?:"
  bill = gets.chomp.to_f
  puts "What is the tip rate percentage?:"
  tip_percentage= gets.chomp.to_f
  
  tip_total = ((bill / 100) * tip_percentage)
  
  puts "The tip cost is : #{sprintf('%.2f',(tip_total))}"
  puts "The total cost including the tip is #{sprintf('%.2f',(bill + tip_total))}"
  
end

bill_calc