# ex_7.rb
# Doug Catharine
# 20200630


# Use the each_with_index method to iterate through an array of your creation 
# that prints each index and value of the array.
arr = ['a', 'b', 1,'cat']
arr.each_with_index{ |val, ind|
  puts "The value is #{val} and index is #{ind}"

}
