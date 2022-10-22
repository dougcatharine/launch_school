# what_color_are_you.rb
# Doug Catharine
# 20221022

=begin 

In the code below, an array containing different types of colors is assigned to colors.

Copy Code
colors = ['red', 'yellow', 'purple', 'green']
Use Array#each to iterate over colors and print each element.

Expected output:

Copy Code
I'm the color red!
I'm the color yellow!
I'm the color purple!
I'm the color green!

=end

colors = ['red', 'yellow', 'purple', 'green']
colors.each {|color| puts "I'm the color #{color}"}