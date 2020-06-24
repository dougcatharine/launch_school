# ex_3.rb
# Doug Catharine
# 20200624


# Write a method that counts down to zero using recursion.

def recursive_countdown(number)
  puts number
  if number > 0 
    recursive_countdown(number-1) 
  end

end

puts "Enter an integer"
number = gets.chomp.to_i

recursive_countdown(number)