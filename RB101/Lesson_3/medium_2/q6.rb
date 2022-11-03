# q6.rb
# Doug Catharine
# 20221103

=begin 

How could the following method be simplified without changing its return value?

Copy Code
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

=end

def color_valid(color)
  color ==  "blue" || color ==  "green"
end

p color_valid('blue') == true
p color_valid('green') == true
p color_valid('red') == false
