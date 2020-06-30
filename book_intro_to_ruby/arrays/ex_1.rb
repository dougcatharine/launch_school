# ex_1.rb
# Doug Catharine
# 20200625

=begin
Below we have given you an array and a number. Write a program that checks to 
see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3
=end

arr = [1,3,5,7,9,11]
number = 3

puts arr.include?(number)

# solution

arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

# ... or...
if arr.include?(number)
  puts "#{number} is indeed in the array."
end