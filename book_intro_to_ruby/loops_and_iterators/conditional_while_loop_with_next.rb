# conditional_while_loop_with_next.rb
# Doug Catharine
# 20200624


x = 0

while x<= 10
  if x ==3
    x+= 1
    break #next
  elsif x.odd?
    puts x
  end
  x+=1
end
