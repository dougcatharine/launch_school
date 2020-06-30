# ex_2.rb
# Doug Catharine
# 20200630


#What will the following programs return? What is the value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3))  # [[b 1] [b 2 ] [b 3], [a 1] [a 2] [a 3]]
arr.first.delete(arr.first.last)# [[b 1] [b 2 ] [3], [a 1] [a 2] [a 3]]

arr = ["b", "a"]
arr = arr.product([Array(1..3)]) # [[b [1 2 3] , [a [1 2 3]]
arr.first.delete(arr.first.last)  # I think the brackets are going to effect it
# # [[b [2 3] , [a [1 2 3]] ... lets see


# solution 
=begin
1. returns 1
    arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

2. returns [1, 2, 3]
    arr = [["b"], ["a", [1, 2, 3]]]
=end

