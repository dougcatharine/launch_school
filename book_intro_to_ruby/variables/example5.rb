# example5.rb
# written by Doug Catharine
# 20200618


# Look at the following programs...

x = 0
3.times do
  x += 1
end
puts x

# and...

y = 0
3.times do
  y += 1
  z = y
end
puts z

# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?

# first block should run and print 3, second program will thow error because of the limited sope of x

#huh... the both run, although solution says it shouldnt.  Although I fixed it... the program already had the variable x from the first two programs.  So I was correct!