#Basics_ex2.rb
#Doug Catharine
#20221018

=begin
Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
=end

four_digit_number = 5432

thousands_place = four_digit_number/1000
hundreds_place = four_digit_number%1000/100
tens_place = four_digit_number%1000%100/10
ones_place = four_digit_number%1000%100%10/1

puts "the four digit number is #{four_digit_number}"
puts "the thousands place number is #{thousands_place}"
puts "the hundreds place number is #{hundreds_place}"
puts "the tens place number is #{tens_place}"
puts "the ones place number is #{ones_place}"


