# repeat_yourself.rb
# Doug Catharine
# 20221024


=begin
  
Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

Example:

Copy Code
repeat('Hello', 3)
Output:

Copy Code
Hello
Hello
Hello

=end

def repeat(str,num)
  num.times {puts str}
  
end

repeat('Hello', 3)