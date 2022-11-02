# q6.rb
# Doug Catharine
# 20221102

=begin 

Starting with the string:

Copy Code
famous_words = "seven years ago..."
show two different ways to put the expected "Four score and " in front of it.

=end

famous_words = "seven years ago..."

other_words = "Four score and "

puts other_words << famous_words

famous_words = "seven years ago..."

other_words = "Four score and "

puts famous_words.prepend(other_words)


#solution


"Four score and " + famous_words
#or


famous_words.prepend("Four score and ")
#or


"Four score and " << famous_words
