def count_occurrences(array)
  vehicle_counts = Hash.new(0)

  array.each do |vehicle|
    vehicle_counts[vehicle.downcase] += 1
  end

  vehicle_counts.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)