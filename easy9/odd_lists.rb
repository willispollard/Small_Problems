# def oddities(arr)
#   new_arr = Array.new

#   arr.each_with_index do |item, index|
#     new_arr.push(item) if index.even? || index == 0
#   end

#   new_arr
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []
# p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# further exploration

def oddities(arr)
  new_arr = Array.new

  arr.each_with_index do |item, index|
    new_arr.push(item) if index.odd?
  end

  new_arr
end

p oddities([2, 3, 4, 5, 6]) 
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])
p oddities([1, 2, 3, 4, 1])