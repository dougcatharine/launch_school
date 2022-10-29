# rps.com
# Doug catharine
# 20221027

VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_AGAIN = %w(yes no)
WIN = { rock: ['scissors', 'lizzard'],
        paper: ['rock', 'spock'],
        scissors: ['paper', 'lizzard'],
        spock: ['scissors', 'rock'],
        lizard: ['paper', 'spock'] }

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WIN[first.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt("Computer Wins!")
  else
    prompt("Its a tie")
  end
end

def valid_answer?(answer, selection_array)
  selection_array.include?(answer.downcase)
end

choice = ''
rematch = ''
loop do
  loop do
    prompt("chose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if valid_answer?(choice, VALID_CHOICES)
      break
    else
      prompt("Thats not a valid choice.")
    end
  end

  computer = VALID_CHOICES.sample
  system 'clear'
  prompt("You chose #{choice}, the computer chose #{computer}")
  display_results(choice, computer)

  loop do
    prompt("Would you like to play again? (yes/no)")
    rematch = gets.chomp

    if valid_answer?(rematch, VALID_AGAIN)
      break
    else
      prompt("Thats not a valid choice.")
      prompt("Please enter either 'yes',or 'no'.")
    end
  end

  break unless rematch.downcase == 'yes'
end
