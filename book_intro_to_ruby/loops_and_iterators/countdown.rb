# countdown.rb
# Doug Catharine
# 20200624

x = gets.chomp.to_i

while x>=0
  puts x
  x-= 1
end

puts "Done"

until x>=10
  puts x
  x+=1
end

puts "Done"

