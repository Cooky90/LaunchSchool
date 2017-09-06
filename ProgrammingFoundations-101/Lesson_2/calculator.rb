# ask the user for two numbers
# ask the user for an operation to peform
# perform the operation on the two numbers
# output the result
require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')


def prompt(message)
  Kernel.puts("->> #{message}")
end

def valid_number?(number)
  number.to_i.to_s == number
end

def number?(number)
  number.to_i.to_s == (number) || number.to_f.to_s == (number)
end

def operation_to_message(op)
  selection = case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
  
  selection
end

prompt(MESSAGES['welcome'])
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure a valid is entered!")
  else
      break
    end
end

  prompt("Hi #{name}!")

loop do
  number1 = ''
  loop do
    Kernel.puts("Enter the first number.")
    number1 = Kernel.gets().chomp()
    
    if number?(number1) == true
      break
    else
      prompt("That is not a valid number!")
    end
  end

    number2 = ''
    loop do
      Kernel.puts("Enter the second number")
      number2 = Kernel.gets().chomp()

      if number?(number2) == true
      break
      else
        prompt("That is not a valid number!")
      end
    end

    operator_options = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
    MSG

    prompt(operator_options)
    operator = Kernel.gets().chomp()
    

    Kernel.puts("#{operation_to_message(operator)} the numbers now.")

    result = case operator
             when '1'
               number1.to_f + number2.to_f
             when '2'
               number1.to_f - number2.to_f
             when '3'
               number1.to_f * number2.to_f
             when '4'
               number1.to_f / number2.to_f
    end

    Kernel.puts("The result is #{result}")

    prompt("Do you want to perform another calculation? (Y to repeat)")
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
end

prompt("Thanks for using the Calculator!")
