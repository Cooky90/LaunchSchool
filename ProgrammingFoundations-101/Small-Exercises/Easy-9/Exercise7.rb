def swap_name(string)
  split = string.split
  "#{split[1]}, #{split[0]}"
end

swap_name('Joe Roberts') == 'Roberts, Joe'