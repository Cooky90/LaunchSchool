def print_in_box(string)
  string = ' ' << string << ' '
  string_count = string.length
  
  puts build_a_row('+','-',string_count)
  puts build_a_row('|',' ',string_count)
  puts build_a_row('|',string,string_count)
  puts build_a_row('|',' ',string_count)
  puts build_a_row('+','-',string_count)
  
  
end


def build_a_row(ends, filler_content, filler_qty)
  array = []
  array << ends
  if filler_content.length > 1
    filler_content.chars.each {|char| array << char}.flatten
  else
    array << (filler_qty).times{array << filler_content}
    array.pop
  end
  array << ends
  array.join
end

print_in_box('hello')
print_in_box('To boldly go where no one has gone before.')

#####Other method worth exploring, well written code.

MAX_CONTENT = 76

def lines_of_content!(content)
  arr_of_content = []
  loop do
    break if content.size <= MAX_CONTENT
      arr_of_content << content.slice!(0, MAX_CONTENT)
  end
  arr_of_content << content
end

def display_content(arr_of_content)
  arr_of_content.each do |line|
    line = line.strip
    puts "| #{line} #{(" " * (arr_of_content[0].size - line.size))}|"
  end
end

def display_half_box(outer1, inner1, outer2, inner2, box_width)
  puts "#{outer1}#{inner1 * box_width}#{outer1}"
  puts "#{outer2}#{inner2 * box_width}#{outer2}"
end

def print_in_box(content)
  content_arr = lines_of_content!(content)
  width = content_arr[0].size + 2
  display_half_box("+", "-", "|", " ", width)
  display_content(content_arr)
  display_half_box("|", " ", "+", "-", width)
end

print_in_box("A Wild Boar was sharpening his tusks busily against the stump" \
  "of a tree, when a Fox happened by. Now the Fox was always looking for a " \
  "chance to make fun of his neighbors...")