# ignoring_case.rb
# Doug Catharine
# 20221022



=begin 
Using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings. Print true if the values are the same; print false if they aren't. Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.

Copy Code
name = 'Roger'
Expected output:

Copy Code
true
false 
=end
name_in = ['RoGeR', 'DAVE']
name = 'Roger'
puts name.downcase == name_in[0].downcase
puts name.downcase == name_in[1].downcase


