# Ex_9.rb
# Doug Catharine
# 20221020

#Suppose you have a hash 
h = {a:1, b:2, c:3, d:4}


#1. Get the value of key `:b`.
p h[:b]

#2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
p h

#3. Remove all key:value pairs whose value is less than 3.5

hh = h.select {|k,v| v>=3.5}
p hh
p h