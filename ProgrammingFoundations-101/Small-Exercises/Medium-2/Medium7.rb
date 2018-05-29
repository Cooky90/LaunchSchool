require 'date'

def friday_13th(year)
  count = 0
  
  (Date.new(year,01,01)..Date.new(year,12,30)).each do |date|
    count += 1 if date.day == 13 && date.friday?
  end
  
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2