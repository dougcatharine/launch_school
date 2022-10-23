# divided_by_two.rb
# Doug Catharine
# 20221023



=begin 


Divided by Two
Use Enumerable#map to iterate over numbers and return an array containing each number divided by 2. Assign the returned array to a variable named half_numbers and print its value using #p.

Copy Code
numbers = {
  high:   100,
  medium: 50,
  low:    10
}
Expected output:

Copy Code
[50, 25, 5]

=end

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map do |k, v|
                 v/2
               end

p half_numbers