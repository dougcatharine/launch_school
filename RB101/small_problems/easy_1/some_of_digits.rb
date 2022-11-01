#some_of_digits.rb
# Doug Catharine
# 20221031


=begin 

Write a method that takes one argument, a positive integer, and returns the sum of its digits.

Examples:

Copy Code
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
The tests above should print true.

For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).


create methhod that accepts intiger
convert integer to string
split string into array
turnstrings into intigers
reduce array into sum
=end

def sum(int)
  int.to_s.split(//).map(&:to_i).reduce(:+)
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
