# greet_you_friends.rb
# Doug Catharine
# 20200718


#Greet Your Friends
#Your friends just showed up! Given the following array of names, use a for #loop to greet each friend individually.

friends = ['Sarah', 'John', 'Hannah', 'Dave']
#Expected output:

#Hello, Sarah!
#Hello, John!
#Hello, Hannah!
#Hello, Dave!

for name in friends
  puts "Hello, #{name}!"
end