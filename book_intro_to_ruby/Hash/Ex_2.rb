# Ex_2.rb
# Doug Catharine
# 20221019


#Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.


hash1 = {name:"Doug", age: 40}
hash2 = {name:"Mandy", status: 'wife', age: 38}


p hash1.merge(hash2)
p hash1.merge!(hash2)
p hash1