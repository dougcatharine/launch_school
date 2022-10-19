# Ex_3.rb
# Doug Catharine
# 20221018


=begin
Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
=end

def num_decision(number)
  if number >100
    "number is greater than 100"
  elsif number > 50
    "number is between 51 and 100"
  else
    "number is between 0 and 50"
  end

end  

puts "enter an integer between 0 and 100"
number = gets.chomp.to_i
puts num_decision(number)
