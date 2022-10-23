# Ex_7.rb
# Douglas Catharine
# 20221018


# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array


arr = ['tom', 'dick', 'harry']

arr.each_with_index do |i,v|
  puts "the index is #{i}, the value is #{v}"  
end