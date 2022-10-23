# stop_counting.rb
# Doug Catharine
# 20221021


=begin

The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.

Copy Code
5.times do |index|
  # ...
end

=end

5.times do |index|
  puts index
  break if index==2
end