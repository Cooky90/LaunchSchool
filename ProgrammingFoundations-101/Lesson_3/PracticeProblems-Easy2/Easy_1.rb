ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Search for 'Spot' in the hash.

puts ages.any? {|key,value| key == 'Spot'}

# Alternative ways of doing this.

ages.each_key {|key| puts key if key == 'Spot'}

puts ages.has_key?('Spot')

#

Bonus Answer:

# Hash#include? and Hash#member?