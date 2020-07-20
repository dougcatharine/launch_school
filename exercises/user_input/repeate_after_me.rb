# repeate_after_me.rb
# Doug Catharine
# 20200718

#Write a program that asks the user to type something in, after which your #program should simply display what was entered.

=begin
Example:

$ ruby repeater.rb
>> Type anything you want:
This is what I typed.
This is what I typed.
=end

def echo(str)
  puts str
end

def listen
  return gets
end


puts "type any string"
echo(hear)