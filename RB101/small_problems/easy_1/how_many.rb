# how_many.rb
# Doug Catharine
# 20221031

=begin
  
Write a method that counts the number of occurrences of each element in a given array.

Copy Code
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

Expected output:

Copy Code
car => 4
truck => 3
SUV => 1
motorcycle => 2

=end

#create method that takes array
# iterate through each item in array
# if item does not exist, create hash, start with value = 1
# if hash exists, add +1 to value
#finish iteration
# start new iteration printing key right rocket value

def count_occurrences(auto)
  vehicle_hash = Hash.new
  auto.each do |k|
    if vehicle_hash.member?(k.to_sym)
      vehicle_hash[k.to_sym] += 1
    else
      vehicle_hash[k.to_sym] = 1
    end
  end

  vehicle_hash.each { |key, value| puts "#{key.to_s} => #{value}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
count_occurrences(vehicles)
