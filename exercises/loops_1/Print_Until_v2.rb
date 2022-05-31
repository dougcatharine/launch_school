# Print_Until_v2.rb
# doug Catharine
# 20220530

#Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

#Expected output:

#7
#9
#13
#25
#18

until numbers.size == 0
  puts numbers.shift
end