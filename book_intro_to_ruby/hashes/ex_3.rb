# ex_3.rb\
# Doug Catharine
# 20200714

=begin
Using some of Ruby's built-in Hash methods, write a program that loops through 
a hash and prints all of the keys. Then write a program that does the same 
thing except printing the values. Finally, write a program that prints both.
=end

animals = {elk: 'tasty', deer: 'plentiful', bison:'rare', goat: 'few'}

for i in animals.each_key
  puts i
end
for i in animals.each_value
  puts i
end
for i in animals.each
  puts i
end
#puts animals.each {|k,v| puts v}