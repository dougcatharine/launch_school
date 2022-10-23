# greeting.rb
# Doug Catharine
# 20221018

=begin
Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.
=end

def greeting (name="Jon Doe")
  puts "Hello #{name}"
end

puts "What is your name?"

greeting gets.chomp