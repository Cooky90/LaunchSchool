def format_date(string)

  if string.match(/\d\d\d\d-\d\d-\d\d/)
    string.gsub!('-','.')
  end
  
  puts string
  

end

format_date('2016-06-17')
format_date('2016/06/17')

## Solution suggested capturing all the data we wanted to keep, then put the data back in reverse order
## using captured groups and then placing the decimal point between..see below

def format_date(original_date)
  original_date.sub(/\A(\d\d\d\d)-(\d\d)-(\d\d)\z/, '\3.\2.\1')
end


