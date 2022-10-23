# thats_odd.rb
# Doug Catharine
# 20221021


=begin
The code below shows an example of a for loop. Modify the code so that it only outputs i if i is an odd number.

Copy Code
for i in 1..100
  puts i
end

=end

for i in 1..100
  puts i if i.odd?
end