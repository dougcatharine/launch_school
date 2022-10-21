# print_until.rb
# Doug Catharine
# 20221021


=begin
Given the array of several numbers below, use an until loop to print each number.


numbers = [7, 9, 13, 25, 18]
Expected output:


7
9
13
25
18
=end

numbers = [7, 9, 13, 25, 18]

until numbers.length ==0

p numbers.shift

end