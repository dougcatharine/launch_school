# get_the_sum.rb
# Doug Catharine
# 20221021


=begin

The code below asks the user "What does 2 + 2 equal?" and uses #gets to retrieve the user's answer. Modify the code so "That's correct!" is printed and the loop stops when the user's answer equals 4. Print "Wrong answer. Try again!" if the user's answer doesn't equal 4.

Copy Code
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
end



=end
nums = [1,2]
loop do
  puts "What does #{nums[0]} + #{nums[1]} equal?"
  answer = gets.chomp.to_i
  puts nums[0]+nums[1]==answer ? break : "try again"
end
puts "That correct"