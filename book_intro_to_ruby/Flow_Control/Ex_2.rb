# Ex_2.rb
# Doug Catharine
# 20221018


=begin
Write a method that takes a string as an argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
=end

def long_word_capitalize (word_in)
  if word_in.length >10
    return word_in.upcase
  end
end

puts "enter a word"

puts long_word_capitalize(gets.chomp)