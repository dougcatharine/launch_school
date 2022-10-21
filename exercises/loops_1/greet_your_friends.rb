# greet_your_friends.rb
# Doug Catharine
# 20221021

=begin

Your friends just showed up! Given the following array of names, use a for loop to greet each friend individually.

Copy Code
friends = ['Sarah', 'John', 'Hannah', 'Dave']
Expected output:

Copy Code
Hello, Sarah!
Hello, John!
Hello, Hannah!
Hello, Dave!

=end

friends = ['Sarah', 'John', 'Hannah', 'Dave']

while friends.length >0
  puts "Hello, #{friends.shift}!"

end

# from solution

for friend in friends
  puts "Hello, #{friend}!"
end