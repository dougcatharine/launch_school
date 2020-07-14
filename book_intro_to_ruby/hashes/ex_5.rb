# ex_5.rb
# Doug Catharine
# 20200714

# What method could you use to find out if a Hash contains a specific value in # it? Write a program to demonstrate this use.

example = {color: 'red', size: 'small'}

p example.has_value?('blue')
p example.has_value?('red')