# rps.com
# Doug catharine
# 20221027

require 'pry'

VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end
choice = ''
rematch = ''
loop do
  loop do
    prompt("chose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      puts choice
      break
    else
      prompt("Thats not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  if choice == 'rock' && computer_choice == 'scissors' ||
     choice == 'paper' && computer_choice == 'rock' ||
     choice == 'scissors' && computer_choice == 'paper'
    prompt('You won!')

  elsif computer_choice == 'rock' && choice == 'scissors' ||
        computer_choice == 'paper' && choice == 'rock' ||
        computer_choice == 'scissors' && choice == 'paper'
    prompt("Computer Wins!")
  else
    prompt("Its a tie")
  end

  prompt("You chose #{choice}, the computer chose #{computer_choice}")
  prompt("Would you like to play again? (y/n)")
  rematch = gets.chomp
  break unless rematch.downcase.start_with? == 'y'
end
