def merge(arr1, arr2)
  merged_array = []

  arr2.each do |element|
    merged_array = arr1 << element
  end

  merged_array.uniq.sort
end


p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]