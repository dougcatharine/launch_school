# greeting_through_methods2.rb
# Doug Catharine
# 20221022


=begin

Greeting Through Methods (Part 2)
Write a method named greet that invokes the following methods:

Copy Code
def hello
  'Hello'
end

def world
  'World'
end
When greet is invoked with #puts, it should output the following:

Copy Code
Hello World
Make sure you add a space between "Hello" and "World", however, you're not allowed to modify hello or world.


=end
def hello
  'Hello'
end

def world
  'World'
end
def greet
  hello+' '+world
  
end

puts greet