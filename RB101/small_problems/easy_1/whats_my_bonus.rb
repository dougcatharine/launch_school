# Doug Catharine
# whats_my_bonus.rb
# 20221031


=begin 

Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

Examples:

Copy Code
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
The tests above should print true.


create a method that takes a intiger and a boolean

if true return half of integer, otherwise zero

=end

def calculate_bonus(int, bool)
  bool ? int / 2 : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
