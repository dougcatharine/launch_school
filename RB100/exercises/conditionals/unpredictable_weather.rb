# unpredictable_weather.rb
# Doug Catharine
# 20221022


=begin
  
In the code below, sun is randomly assigned as 'visible' or 'hidden'.

Copy Code
sun = ['visible', 'hidden'].sample
Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.
=end

sun = ['visible', 'hidden'].sample

# if sun == 'visible'
#   puts 'The sun is so bright'
# end

# unless sun == 'visible'
#   puts 'The clouds are blocking thesun!'
# end


puts 'The sun is so bright' if sun == 'visible'
puts 'The clouds are blocking the sun!' unless sun == 'visible'