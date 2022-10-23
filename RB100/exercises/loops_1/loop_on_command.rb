#loop_on_command.rb
# Doug Catharine
# 20221021

=begin
Modify the code below so the loop stops iterating when the user inputs 'yes'.


loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
end

=end

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer=='yes'
end