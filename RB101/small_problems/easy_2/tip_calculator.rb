# tip calculator.rb
# Doug Catharine
# 20221102

=begin 

Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

Example:

Copy Code
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

=end

puts 'What is the bill?'
bill = gets.chomp.to_f
puts 'What is the tip percentage?'
tip_per = gets.chomp.to_f
tip = (tip_per / 100) * bill
total = tip + bill

puts "The tip is $#{tip.round(2)}"
puts "The total bill is $#{total.round(2)}"
