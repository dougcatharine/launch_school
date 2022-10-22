# monte_carlo_dice_roll.rb
# Doug Catharine
# 20221022

NUMBER_OF_ROLLS = 10_000_000
NUMBER_OF_DICE = 3

NUMBER_OF_SIDES_ON_DICE = 20

count = 0
rng = Random.new

NUMBER_OF_ROLLS.times do
  roll= Array.new
  NUMBER_OF_DICE.times do |die|
    roll[die] = rng.rand(1..NUMBER_OF_SIDES_ON_DICE)
  end
  count += 1 if roll.all? { |side| side == 1 }
end

odds = NUMBER_OF_ROLLS/count
puts count.to_s
p "The odds of rolling #{NUMBER_OF_DICE} dice landing on a specified number are 1 in #{odds}"