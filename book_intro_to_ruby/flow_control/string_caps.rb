# string_caps.rb
=begin
Write a method that takes a string as argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
=end

def big_word(word)
  if word.size>10
    word.upcase!
  else
    word
  end
end

puts big_word("Hello")
puts big_word("Hello World")