BLOCKS = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"],
          ["N", "A"], ["G", "T"], ["R", "E"], ["F", "S"],
          ["J", "W"], ["H", "U"], ["V", "I"], ["L", "Y"],
          ["Z", "M"]]
          
          # Comment and explain another user's code to really grasp the problem!!

def block_word?(string)
  letters = BLOCKS.dup  # assigns a dup copy of the BLOCKS array to letters
  chars   = string.chars.map(&:upcase) # uses recursion to add each string as an element in an array & each char is uppercased.
  results = [] # assigns an empty array to results variable

  chars.each do |char|                          # iterates through each letter
    p results << letters.flatten.include?(char) # flattens block array into full list of block chars, if this letter is in the block, it evaluates and puts true/false in array
    p letters.delete_if { |ary| ary.include?(char) } # delete_if method passes the BLOCK array into the block and deletes the letter from the block, deletes the WHOLE ARRAY THOUGH!!
  end

  results.all? # returns true if any of the elements in results array are true, and of course any chars that couldnt be used by the block do return flase.
end

block_word?('BO')

# This nested approach won't work, instead iterate through string and identify elements to delete.