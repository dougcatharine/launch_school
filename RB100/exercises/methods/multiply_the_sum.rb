# multiply_the_sum.rb
# Doug Catharine
# 20221022


=begin

Write the following methods so that each output is true.

Copy Code
puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

=end

def add(num1,num2)
  num1+num2
end

def multiply(num1,num2)
  num1*num2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36