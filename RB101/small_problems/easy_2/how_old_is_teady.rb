# how_old_is_teady.rb
# doug Catharine
# 20221102

=begin 


Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

Example Output

Copy Code
Teddy is 69 years old!

=end
def ask_name
  puts "What is your name"
  name = gets.chomp
  name = "Teddy" if name == ''
  name
end

puts "#{ask_name} is #{rand(20..200)} years old! "
