# conditional.rb
# Doug Catharine
# 20200620



puts "Put in a number"

a = gets.chomp.to_i

if a == 3
  puts "a is = to 3"
elsif a == 4
  puts "a is = to 4"
else
  puts "a is neither 3 nor 4"
end


if a == 3 then puts "a = 3" end

puts  "a is 3" if a ==4

puts "a is not 3" unless a==3