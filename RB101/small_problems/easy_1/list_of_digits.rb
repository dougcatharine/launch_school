#list_of_digits.rb
# Doug Catharine
# 20221024

=begin 

List of Digits
Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

Examples:

Copy Code
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

=end

=begin

iterate through code until no numbers left
use modulo 10 to get ones charecter and add to new array
use dived by 10 to get new intiger and save
end iteration
return modulo array


=end

def digit_list(ary)
  working_ary = ary
  return_array = Array.new
  while working_ary != 0
    return_array.prepend(working_ary % 10)
    working_ary /= 10
  end
  return_array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
