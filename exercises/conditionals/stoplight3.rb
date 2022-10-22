# stoplight3.rb
# Doug Catharine
# 20221022

=begin  
Reformat the following case statement so that it only takes up 5 lines.

Copy Code
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end
=end

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green' then puts 'Go!'
when 'yellow'then puts 'Slow down!'
else              puts 'Stop!'
end