# Ex_2.rb
# Doug Catharine
# 20221018

#Write a while loop that takes input from the user, performs an action, and #only stops when the user types "STOP". Each loop can get info from the user.


while true
  puts "This is the song that never ends!"
  puts "Enter 'STOP' to stop"
  answer = gets.chomp
  break if answer == 'STOP' 


end  