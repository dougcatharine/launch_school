# Greet_Your_Friends_v2.rb
# Doug Catharine
# 20220530


#Your friends just showed up! Given the following array of names, use a for loop to greet each friend individually.

friends = ['Sarah', 'John', 'Hannah', 'Dave']
#Expected output:

#Hello, Sarah!
#Hello, John!
#Hello, Hannah!
#Hello, Dave!

friends.each do |friend|
  puts "Hello, #{friend}"
end

for friend in friends
  puts "Hello, #{friend}"
end