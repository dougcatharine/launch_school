#name.rb
#Doug Catharine
#20221018

=begin
Ex.1
Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.
=end

puts "Please enter your first name"
name = gets.chomp
puts "Please enter your last name"
sirname = gets.chomp

puts "Hello #{name} #{sirname}"

#Add another section onto name.rb that prints the name of the user 10 times. #You must do this without explicitly writing the puts method 10 times in a row. #Hint: you can use the times method to do something repeatedly.

10.times {puts "Hello #{name}"}

# Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.