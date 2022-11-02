# when_will_retire.rb
# Doug Catharine
# 202211102

=begin 

Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:

Copy Code
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

=end

CURRENT_YEAR = 2022

puts 'What is your current age?'
age = gets.chomp.to_i
puts 'At what age would you like to retire?'
retire_age = gets.chomp.to_i
time_till_retire = retire_age - age

puts "It's #{CURRENT_YEAR}. You will retire in #{CURRENT_YEAR + time_till_retire}."
puts "You have only #{time_till_retire} years of work left"
