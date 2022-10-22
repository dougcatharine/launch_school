# tricky_formating.rb
# Doug Catharine
# 20221022


=begin 

Using the following code, capitalize the value of state then print the modified value. Note that state should have the modified value both before and after you print it.

Copy Code
state = 'tExAs'
Expected output:

Copy Code
Texas

=end
state = 'tExAs'.capitalize

puts state

state = 'tExAs'

state.capitalize!
puts state