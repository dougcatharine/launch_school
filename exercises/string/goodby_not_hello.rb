# goodby_not_hello.rb
# Doug Catharine
# 20200720

#Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

greeting = 'Hello!'
greeting = 'Goodbye!'
puts greeting
#Expected output:

#Goodbye!

# solution 
greeting = 'Hello!'

greeting.gsub!('Hello', 'Goodbye')
puts greeting