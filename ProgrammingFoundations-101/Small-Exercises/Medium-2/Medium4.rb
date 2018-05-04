def balanced?(string)
  return false if string.count('(') != string.count(')')
  
  opening_para = 0
  closing_para = 0
  string.chars.each_with_index do |char,index|
    if char =~ /\(/ 
      opening_para += index
    elsif char =~ /\)/
      closing_para += index
    end
  end
  p opening_para
  p closing_para
  opening_para < closing_para ? true : false
  
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false