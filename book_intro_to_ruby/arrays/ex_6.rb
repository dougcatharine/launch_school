# ex_6.rb
# Doug Catharine
# 20200630


# You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
# ...and get the following error message:

=begin
TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
=end


# What is the problem and how can it be fixed?

# The problem is that 'margaret' is not an integer or index.  it can be fixed by 
names[3] = 'jody' 

# solution
names[3] = 'jody'   # => ["bob", "joe", "susan", "jody"]
