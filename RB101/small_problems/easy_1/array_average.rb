#array_avverage.rb
# Doug Catharine
# 20221031

=begin
Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

Examples:

Copy Code
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
The tests above should print true.


write a method that takes an array of intigers
create sum int
find average of all numbers
  iteragte all numbers and add to sum 
  divide by size of array

return average
=end

def average(array)
  sum = 0
  array.each { |i| sum += i }
  sum / (array.size)
end


puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
