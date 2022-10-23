# Ex_1.rb
# Doug Catharine
# 20221020

=begin
Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

"laboratory"
"experiment"
"Pans Labyrinth"
"elaborate"
"polar bear"

=end

def checkword(word)
  if word =~ /lab/
    p word
  else
    p "lab is not in #{word}"
  end

end

checkword("laboratory")
checkword("experiment")
checkword("Pans Labyrinth")
checkword("elaborate")
checkword("polar bear")
