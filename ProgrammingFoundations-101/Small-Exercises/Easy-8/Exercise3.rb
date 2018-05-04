def substrings_at_start(string)
  array = []
  (string.size).times { |n_time| array << string.slice(0..n_time) }
  array
end

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']