# stoplight.rb
# Doug Catharine
# 20200720

#In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.

stoplight = ['green', 'yellow', 'red'].sample
#Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

case stoplight
  when 'green'
    puts "Go!"
  when "yellow"
    puts "slow down"
  when "red"
    puts "stop"
  end

#Convert the following case statement to an if statement.
if stoplight.eql?('green')
  puts "Go!"
elsif stoplight.eql?('yellow')
  puts "slow down"
else
  puts "stop"
end
  
# Reformat the following case statement so that it only takes up 5 lines.
case stoplight
when 'green' then puts "Go!"
when "yellow" then puts "slow down" 
else puts "stop" 
end