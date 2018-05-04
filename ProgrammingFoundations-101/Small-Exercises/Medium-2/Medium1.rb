def longest_setence(file)
  file = IO.read(file)
  largest = 0
  file.gsub(/[!?]/,'.').split(/\./).each do |sentence|
    largest = (sentence.split.count) if sentence.split.count > largest
  end
  
  puts "The largest word is #{largest} words long! Document name: #{File.basename(file)}"
end

#longest_sentence('ebook.txt')

## use a hash for this solution with the sentence length

def longest_sentence(file)
  file = IO.read(file)
  length_hash = {}
  file.gsub(/[!?]/,'.').split(/\./).each do |sentence|
    length_hash[sentence] = sentence.split.count
  end
  puts length_hash.max_by {|k,v| v }
  

end

longest_sentence('ebook.txt')