# reggex.rb
# Doug Catharine
# 20200714

=begin
Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

"laboratory"
"experiment"
"Pans Labyrinth"
"elaborate"
"polar bear"
=end

def does_lab_exist(word)
  if /lab/.match(word.downcase)
    puts word
  end
end


words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]


words.each { |w| does_lab_exist(w) }
