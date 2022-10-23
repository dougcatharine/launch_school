# Ex_4.rb
# Doug Catharine
# 20221020


#Append 11 to the end of the original array. Prepend 0 to the beginning.


arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_arr = arr<<11
new_new_arr = new_arr.unshift(0)
p new_new_arr