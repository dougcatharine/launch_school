# goodbye_not_hello.rb
# Doug Catharine
# 20221022

=begin 

Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

Copy Code
greeting = 'Hello!'
puts greeting
Expected output:

Copy Code
Goodbye!

=end

greeting = 'Hello!'
puts greeting


greeting = 'Hello!'

greeting.gsub!('Hello', 'Goodbye')
puts greeting