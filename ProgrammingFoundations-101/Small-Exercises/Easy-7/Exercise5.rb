def staggered_case(string, starting_case = true)
  result = ''
  need_upper = starting_case
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    if char =~ /[A-Za-z]/ 
      need_upper = !need_upper
    end
  end
  p result
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'