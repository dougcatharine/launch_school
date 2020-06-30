# ex_8.rb
# Doug Catharine
# 20200630


=begin
Write a program that iterates over an array and builds a new array that is the 
result of incrementing each value in the original array by a value of 2. You 
should have two arrays at the end of this program, The original array and the 
new array you've created. Print both arrays to the screen using the p method 
instead of puts.
=end

new_array = Array.new
orig_array = [1,3,5,7,9]
orig_array.each { |val| new_array << val+2 }


# solution

arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr
