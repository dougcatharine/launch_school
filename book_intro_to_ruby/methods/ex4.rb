# ex4.rb
# Doug Catharine
# 20200620


def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# I think it will print "Yippeee!!!!"
# But it prints nothing!


#1) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?

def scream(words)
  words = words + "!!!!"
  puts words
  return
end

scream("Yippeee")