# insert_numbers.rb
# Doug Catharine
# 20200718


#Modify the code below so that the user's input gets added to the numbers 
#array. Stop the loop when the array contains 5 numbers.

numbers = []
puts 'Enter any number:'
loop do

  input = gets.chomp.to_i

  numbers << input

  break if numbers.size == 5
  puts 'Enter another number:'
end
puts numbers