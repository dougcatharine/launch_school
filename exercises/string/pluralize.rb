# pluralize.rb
# Doug Catharine
# 20221022

=begin 

Given the following code, use Array#each to print the plural of each word in words.

Copy Code
words = 'car human elephant airplane'
Expected output:

Copy Code
cars
humans
elephants
airplanes

=end

words = 'car human elephant airplane'

words.split.each{|word| puts word<<'s'}