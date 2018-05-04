def greetings(array, hash)
  puts "Hello, #{hash[:title]} #{array.join(' ')}! Nice to have a "\
       "#{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
