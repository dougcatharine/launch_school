# print_something.rb
# Doug Catharine
# 20221021



=begin

Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.

Examples:

Copy Code
$ ruby something.rb
>> Do you want me to print something? (y/n)
y
something

$ ruby something.rb
>> Do you want me to print something? (y/n)
n

$ ruby something.rb
>> Do you want me to print something? (y/n)
help

=end

answer = nil
  loop do
    puts "Enter 'y' is you want me to print something"
    answer = gets.chomp.downcase
    break if %w(y n).include?(answer)
    puts ":error, you did not enter 'y'or 'n'"
  
  end
puts "something" if answer=='y'