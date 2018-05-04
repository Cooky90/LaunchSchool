def convert_strings_to_intarray(string)
   return_array = string.split
   
   return_array.map! do |element|
     if element.match(/[0-9]/)
        element.to_i
    else
        element.upcase
    end
   end
   return_array
end

def minilang(commands)
    register = 0 #initialise the register value, thought of as the current value.
                # The register is NOT part of the stack.
    stack = [] #intialise the stack array
    
    convert_command = convert_strings_to_intarray(commands) # convert numbers in string to intgers, returns an array ready to
                                                            # iterate through
    
    convert_command.each do |command|
        case
        when (command.is_a? Integer)
            register = command
        when command == 'PUSH'
            stack << register
        when command == 'ADD'
            register += stack.pop
        when command == 'SUB'
            register -= stack.pop
        when command == 'MULT'
            register *= stack.pop
        when command == 'DIV'
            register = register / (stack.pop)
        when command == 'MOD'
            register = register % (stack.pop)
        when command == 'POP'
            register = stack.pop
        when command == 'PRINT'
            puts register
        end
        puts "register #{register}"
        puts "stack #{stack}"
    end
end


#minilang('PRINT')
# 0

#minilang('5 PUSH 3 MULT PRINT')
# 15

#minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

#minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

#minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

#minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

#minilang('-3 PUSH 5 SUB PRINT')
# 8

#minilang('6 PUSH')
# (nothing printed; no PRINT commands)