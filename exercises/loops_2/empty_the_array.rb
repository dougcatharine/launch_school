# empty_the_array.rb
# Doug Catharine
# 20221021


=begin
Empty the Array
Given the array below, use loop to remove and print each name from first to last. Stop the loop once names doesn't contain any more elements.

Copy Code
names = ['Sally', 'Joe', 'Lisa', 'Henry']
Keep in mind to only use loop, not while, until, etc.
=end
names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do
  break if names.length == 0
  puts names.shift
  
end