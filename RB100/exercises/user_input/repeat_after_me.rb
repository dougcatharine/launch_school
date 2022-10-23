# repeat_after_me.rb
# Doug Catharine
# 20221021


=begin
  
Write a program that asks the user to type something in, after which your program should simply display what was entered.

Example:

Copy Code
$ ruby repeater.rb
>> Type anything you want:
This is what I typed.
This is what I typed.


=end

puts "type something"
input_phrase = gets.chomp 

puts input_phrase
