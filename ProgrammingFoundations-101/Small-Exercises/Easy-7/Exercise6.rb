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
  result
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

#### Interesting other user method ####
def staggered_case str
  lower = true
  arr1 = str.chars.map do |char|
    lower = (lower ? false : true) if char.match /[a-zA-Z]/ ## here is applying boolean = !boolean  using the ternary
    lower ? char.downcase : char.upcase
  end
  arr1.join
end