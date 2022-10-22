# your_age_in_months.rb
# Doug Catharine
# 20221021

=begin

Your Age in Months
Write a program that asks the user for their age in years, and then converts that age to months.

Examples:

Copy Code
$ ruby age.rb
>> What is your age in years?
35
You are 420 months old.

=end

puts "Enter your age in years"
age_in_years = gets.chomp
puts "you are #{age_in_years.to_i*12} months old!"