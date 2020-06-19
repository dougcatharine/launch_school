# name.rb
# written by Doug Catharine
# 20200618

# ex 1 Write a program called name.rb that asks the user to type in their name 3 and then prints out a greeting message with their name included.

puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Welcome, #{first_name} #{last_name}"


# from solution
puts "What is your name?"
name = gets.chomp
puts "Hello " + name

=begin
Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.
=end

10.times do
  puts "Hello #{first_name} #{last_name}" 
end

# solution 
10.times do
  puts name
end


=begin
Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.
=end
# I have been doing this, but lets try what I expect the solution is
puts "what is your first name?"
first = gets.chomp
puts "what is your last name?"
last = gets.chomp
puts "Hello " + first + ' ' +last 