# loop_on_command.rb
# Doug Catharine
# 20200718


#Modify the code below so the loop stops iterating when the user inputs 'yes'.

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer.eql?('yes')  # line added
  puts('enter yes to stop')   # line added
end