# stringy_strings.rb
# doug catharine
# 20221031

=begin 

Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

Examples:

Copy Code
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
The tests above should print true.


create a method that accepts an integer num
iterate num times 
write a 1 if odd, 0 if even
return as string
=end

def stringy(int, start = '1')
  return_str = String.new
  int.times do |i|
    i.even? ? return_str << start : return_str << (start.to_i - 1).abs.to_s
  end
  return_str
end



puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
