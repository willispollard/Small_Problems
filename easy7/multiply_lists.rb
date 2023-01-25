# def multiply_list(arr1, arr2)
#   products = []
#   counter = 0

#   loop do
#     products << arr1[counter] * arr2[counter]

#     counter += 1
#     break if counter == arr1.size
#   end

#   products
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# further exploration
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]