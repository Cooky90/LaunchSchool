def interleave(array_one,array_two)
  array = []
  until array_one.empty? && array_two.empty?
   array << array_one.shift
   array << array_two.shift
  end
  array
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def zip_interleave(array_one,array_two)
  array_one.zip(array_two).flatten
end

zip_interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']