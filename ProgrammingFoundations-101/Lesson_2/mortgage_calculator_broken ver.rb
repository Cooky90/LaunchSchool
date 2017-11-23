# Input: Three pieces of information, loan amount(float), APR rate(float),
# and loan duration(integer/number). The APR and duration must be converted,
# to monthly.

# Ouput: Two pieces of information, the monthly payment(float),
# and the total payable amount(float).
# the total amount(float).

# Rules: The calculator must ask the client for the required information,
# and validate this information. The APR and duration must be converted
# to months. The method must output the monthly payment and the total
# payable total over the loan duration.

# Algorithm: Gets() to get the three peices of information mentioned above.
# Validate the input, make sure all information prompts is for monthly.
# Use the provided formula to calculate the monthly payments.
# Ensure puts() ask for correct information i.e. months
# Store each piece of information as well named variable, also save as %2.f
# Use the variables to calculate the monthly payments, store this as a variable.
# Puts the result, also puts the interest amount + the loan amount.

def validate_number(number)
  number == number.to_i.to_s || number == number.to_f.to_s
end

loan_amount = 0
loop do
  Kernel.puts('Please enter the amount you wish to loan :')
  loan_amount = Kernel.gets().chomp()
  break if validate_number(loan_amount)
  Kernel.puts('Input could not be validated. Please try again.')
end
interest_rate = 0
loop do
  Kernel.puts('Please enter the annual interest rate(APR%) :')
  interest_rate = Kernel.gets().chomp()
  break if validate_number(interest_rate)
  Kernel.puts('Input could not be validated. Please try again.')
end
loan_duration_months = 0
loop do
  Kernel.puts('Please enter the loan duration in months: ')
  loan_duration_months = Kernel.gets().chomp()
  break if validate_number(loan_duration_months)
  Kernel.puts('Input could not be validated. Please try again.')
end

interest_rate_monthly = (interest_rate.to_i / 12)

monthly_repayments = loan_amount.to_f * (interest_rate_monthly.to_f / (1 - (1 + interest_rate_monthly.to_f)**(- loan_duration_months.to_i)))
puts monthly_repayments

