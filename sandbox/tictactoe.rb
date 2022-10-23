require "pry"

PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WIN_KEY = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
           [1, 4, 7], [2, 5, 8], [3, 6, 9],
           [1, 5, 9], [3, 5, 7]]
FIRST_MOVER = 'computer' # 'player', 'computer', or 'choose'
scoreboard = { player: 0, computer: 0 }
player_to_move = FIRST_MOVER
case FIRST_MOVER # assign variable to reset the first mover after each game
when 'player'
  first_mover = 'player'
when 'computer'
  first_mover = 'computer'
else
  first_mover = ''
end

def prompt(message)
  puts "--> #{message}"
end

def initialize_board
  board = {}
  (1..9).each do |i|
    board[i] = ' '
  end
  board
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd, scoreboard)
  system 'clear'
  puts "Player is #{PLAYER_MARKER}.  Computer is #{COMPUTER_MARKER}."
  puts "SCORE: Player: #{scoreboard[:player]} CPU: #{scoreboard[:computer]}"
  puts "        |        |"
  puts "        |        |"
  puts "    #{brd[1]}   |    #{brd[2]}   |    #{brd[3]}"
  puts "        |        |"
  puts "        |        |"
  puts "--------+--------+--------"
  puts "        |        |"
  puts "        |        |"
  puts "    #{brd[4]}   |    #{brd[5]}   |    #{brd[6]}"
  puts "        |        |"
  puts "        |        |"
  puts "--------+--------+--------"
  puts "        |        |"
  puts "        |        |"
  puts "    #{brd[7]}   |    #{brd[8]}   |    #{brd[9]}"
  puts "        |        |"
  puts "        |        |"
end
# Rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def joinor(array, joiner = ', ', ender = 'or')
  output_string = ''
  return "#{array[0]} #{ender} #{array[1]}" if array.size == 2
  array.each_with_index do |n, index|
    output_string << n.to_s
    if index == array.size - 2
      output_string << "#{joiner}#{ender} "
    elsif index == array.size - 1
      break
    else
      output_string << joiner
    end
  end
  output_string
end

def empty_squares(brd)
  brd.select { |_, marker| marker == ' ' }.keys
end

def player_move(brd)
  prompt "Please choose a square (#{joinor(empty_squares(brd))})"
  choice = ''
  loop do
    choice = gets.chomp.to_i
    break if empty_squares(brd).include?(choice)
    puts "Please make a valid selection."
  end
  brd[choice] = PLAYER_MARKER
end

def score(brd)
  WIN_KEY.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return -1
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 1
    end
  end
  0
end

def minimax(brd, player)
  return score(brd) if winner(brd) != false || board_full?(brd)
  if player == true
    best_score = -800_000
    empty_squares(brd).each do |n|
      brd[n] = COMPUTER_MARKER
      position_score = minimax(brd, false)
      brd[n] = ' '
      best_score = [position_score, best_score].max
    end
  else
    best_score = 800_000
    empty_squares(brd).each do |n|
      brd[n] = PLAYER_MARKER
      position_score = minimax(brd, true)
      brd[n] = ' '
      best_score = [position_score, best_score].min
    end
  end
  best_score
end

def computer_move(brd)
  best_score = 0
  move = nil
  empty_squares(brd).each do |n|
   # binding.pry
    brd[n] = COMPUTER_MARKER
    score = minimax(brd, false)
    brd[n] = ' '
    if score > best_score
      best_score = score
      move = n
    end
  end
  brd[move] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def take_a_turn(brd, player)
  if player == 'player'
    player_move(brd)
  elsif player == 'computer'
    computer_move(brd)
  end
end

def alternate_player(player)
  if player == 'player'
    'computer'
  else
    'player'
  end
end

def winner(brd)
  WIN_KEY.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  false
end

def congrats(brd)
  if winner(brd) == false
    prompt "It's a tie!"
  else
    prompt "#{winner(brd)} wins!"
  end
end

def update_scoreboard(scoreboard, winner)
  if winner == 'Player'
    scoreboard[:player] += 1
  elsif winner == 'Computer'
    scoreboard[:computer] += 1
  end
end

def play_again?
  again = ''
  loop do
    prompt "Play again? Y/N?"
    again = gets.chomp.downcase
    break if again == 'y' || again == 'n'
    prompt "Please enter Y or N"
  end
  again == 'y' ? true : false
end

system 'clear' || system(cls)
prompt "Welcome to TIC TAC TOE"
sleep(2)

# Choose first mover
if FIRST_MOVER == 'choose'
  loop do
    prompt "Who moves first?"
    prompt "1) Player"
    prompt "2) Computer"
    input = gets.chomp.to_i
    case input
    when 1
      player_to_move = 'player'
      first_mover = 'player'
      break
    when 2
      player_to_move = 'computer'
      first_mover = 'computer'
      break
    end
    prompt "Please enter 1 or 2"
  end
end

# Main game loop
loop do
  board = initialize_board

  loop do
    display_board(board, scoreboard)
    take_a_turn(board, player_to_move)
    player_to_move = alternate_player(player_to_move)
    break if winner(board) || board_full?(board)
    sleep(0.5)
  end

  winner = winner(board)
  update_scoreboard(scoreboard, winner)
  display_board(board, scoreboard)
  congrats(board)
  sleep(1)
  player_to_move = first_mover # to ensure the same player starts each game
  if scoreboard[:player] == 5 || scoreboard[:computer] == 5
    break if play_again? == false
    scoreboard[:player] = 0
    scoreboard[:computer] = 0
  end
end

prompt "Sometimes the only way to win, is not to play at all"
