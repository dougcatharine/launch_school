# empty_the_array.rb
# Doug Catharine
# 20200718


#Given the array below, use loop to remove and print each name. Stop the loop 
#once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

i = 0
loop do
  puts names[i]
  i += 1
  break if i ==4


end
#Keep in mind to only use loop, not while, until, etc.

# solution

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end