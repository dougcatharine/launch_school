# q9.rb
# Doug Catharine
# 20221102

=begin 

Consider these two simple methods:

Copy Code
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
What would be the return value of the following method invocation?

Copy Code
bar(foo)

=end

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

# should retun "no"
