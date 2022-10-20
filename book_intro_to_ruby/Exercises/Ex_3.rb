# Ex_3.rb
# Doug Catharine
# 20221020


# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr_odd = arr.select{|num| num.odd? }
