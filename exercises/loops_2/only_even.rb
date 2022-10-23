# only_even.rb
# Doug Catharine
# 20221021



=begin
Using next, modify the code below so that it only prints even numbers.

Copy Code
number = 0

until number == 10
  number += 1
  puts number
end
=end

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end