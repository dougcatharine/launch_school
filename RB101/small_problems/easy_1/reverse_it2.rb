# reverse_it2.rb
# Doug Catharine
# 20221031

=begin 

Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

Examples:

Copy Code
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

=end

#create method that accepts stringof strings
# split all strings into an array
# foreach element, if string lenght >= 5 reverse string
# join string 
# return string
#end method


def reverse_words(str)
  split_str = str.split
  split_str.each { |word| word.reverse! if word.length >= 5 }
  split_str.join(' ')
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
