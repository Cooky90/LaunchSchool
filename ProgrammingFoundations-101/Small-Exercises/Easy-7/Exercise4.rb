def swapcase(string)
  new_string = string.chars.map do |letter|
    if letter == letter.downcase
      letter.upcase
    elsif letter == letter.upcase
      letter.downcase
    end
  end
  new_string.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

## Example from another LS member ##

def swapcase(string)
  string.chars.map {|c| c == c.upcase ? c.downcase : c.upcase}.join
end