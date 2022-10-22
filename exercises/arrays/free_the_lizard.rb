# free_the_lizard.rb
# Doug Catharine
# 20221022

=begin 

In the code below, an array containing different types of pets is assigned to pets. Also, the return value of pets[2..3], which is ['fish', 'lizard'], is assigned to my_pets.

Copy Code
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
Remove 'lizard' from my_pets then print the value of my_pets.

Expected output:

Copy Code
I have a pet fish!

=end

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
puts "I have a pet #{my_pets[0]}"