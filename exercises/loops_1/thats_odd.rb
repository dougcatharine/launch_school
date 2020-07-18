# thats_odd.rb
# Doug Catharine
# 20200718


#That's Odd
#The code below shows an example of a for loop. Modify the code so that it only #outputs i if i is an odd number.

for i in 1..100
  if i.modulo(2) == 1
    puts i
  end
end

# solution
for i in 1..100
  puts i if i.odd?
end