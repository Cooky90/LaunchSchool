def cleanup(string)
  string.gsub(/[\W]/,' ').squeeze(' ')
end

cleanup("---what's my +*& line?") == ' what s my line '

# Method without use of regex

def cleanup_new(string)
  string.tr(' -/:-@[-`{-~',' ')
end

## Someone elses method, good approach taken. Uses ascii index to only add char if fits criteria. Good use of a space counter also.

ALPHA_RNG = (65..122) 
NUM_RNG = (0..9)

def cleanup(my_str)
  clean_str = ''
  space_counter = 0
  my_str.split('').each do |char|
    if ALPHA_RNG.include?(char.ord) || NUM_RNG.include?(char.ord)
      clean_str << char
      space_counter = 0
    else
      space_counter += 1
      clean_str << ' ' if space_counter == 1
    end
  end
  clean_str
end