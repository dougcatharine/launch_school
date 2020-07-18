# print_until.rb
# Doug Catharine
# 20200718



#Print Until
#Given the array of several numbers below, use an until loop to print each 
#number.

numbers = [7, 9, 13, 25, 18]
=begin 
Expected output:

7
9
13
25
18
=end

for number in numbers
  puts number
end

until numbers.size == 0
  puts numbers.shift
end