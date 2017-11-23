# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.keep_if {|key,value| key == 'Barney' && value == 2}

puts flintstones

# Exercise examples uses #assoc method. This returns all values associated with a key 
# i.e. hash.assoc(colours)
# [[colours],'blue','yellow'] etc