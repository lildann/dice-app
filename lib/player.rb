class Player
  attr_reader :rolls

  def initialize 
    @rolls = []
  end

  def roll(dice, quantity=1)
    roll = []
    quantity.times { roll << dice.random_value }
    record_roll(roll)
    roll.sum
  end

  def current_score
    rolls.flatten.sum
  end

  private 

  def record_roll(roll)
    rolls << roll
  end
end