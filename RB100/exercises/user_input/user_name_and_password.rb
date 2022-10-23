# user_name_and_password.rb
# Doug Catharine
# 20221021


USERNAME = 'Doug'
PASSWORD = '1234'

loop do

  puts "Please enter your username"
  un = gets.chomp
  puts "Please enter your password"
  pw = gets.chomp
  break if un == USERNAME && pw == PASSWORD

  puts 'Authorization Failed'



end

puts 'welcome'