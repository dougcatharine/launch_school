# are_you_there.rb
# Doug Catharine
# 20221022

=begin 

Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.

Copy Code
colors = 'blue pink yellow orange'
Expected output:

Copy Code
true
false

=end

colors = 'blue pink yellow orange'

puts colors.match?('yellow')
puts colors.match?('purple')