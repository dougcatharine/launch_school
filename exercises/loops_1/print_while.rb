# print_while.rb
# Doug Catharine
# 20221021

=begin
Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

  Copy Code
  numbers = []
  
  while <condition>
    # ...
  end
  Example output (your numbers will most likely be different):
  
  Copy Code
  62
  96
  31
  16
  36
=end

numbers = []
  
while numbers.length<5
  numbers<<rand(0..99)
end

p numbers