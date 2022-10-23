# greeting_through_methods.rb
# Doug Catharine
# 20221022

=begin

Write two methods, one that returns the string "Hello" and one that returns the string "World". Then print both strings using #puts, combining them into one sentence.

Expected output:

Copy Code
Hello World

=end

def hello
  "Hello "
end

def world
  "World"
end

print hello
puts world

puts "#{hello} #{world}"
