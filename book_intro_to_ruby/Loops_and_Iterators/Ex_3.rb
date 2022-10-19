# Ex_3.rb
# Doug Catharine
# 20221018

# write a method that counts down to zero using recursion


def recursive_countdown(number)
  puts number
  
  if number > 0 
    recursive_countdown(number-1)
  end
end


recursive_countdown(10)