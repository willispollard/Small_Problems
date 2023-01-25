def multiply_all_pairs(arr1, arr2)
  pairs = arr1.product(arr2)
  products = []

  pairs.each_with_index do |arr, index|
    products << arr[0] * arr[1]
  end

  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]