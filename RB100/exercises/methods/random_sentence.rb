# random_sentence.rb
# Doug Catharine
# 20221022

=begin
The variables below are both assigned to arrays. The first one, names, contains a list of names. The second one, activities, contains a list of activities. Write the methods name and activity so that they each take the appropriate array and return a random value from it. Then write the method sentence that combines both values into a sentence and returns it from the method.

Copy Code
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
Example output:

Copy Code
George went walking today!

=end
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(ary)
  ary.sample
end

def activity(ary)
  ary.sample
end

def sentence(name_meth,activity_meth)
  "#{name_meth} went #{activity_meth} today!"
end

puts sentence(name(names), activity(activities))