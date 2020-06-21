# range.rb
# Doug Catharine
# 20200620

=begin  Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
=end

def hi_low(num)
  if num > 50
    puts "greater than 50" 
  else
     puts "less than 51"
  end
end

hi_low(20)
hi_low(50)
hi_low(51)


# solution
puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end