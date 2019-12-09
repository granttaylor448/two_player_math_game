class Player
  attr_reader :name, :lives
  def initialize(name, lives)
    @name = name
    @lives = lives
  end
  def name=(name)
    @name = name
  end
  def lose_life(lives)
    @lives= lives -1 
  end
end

player1 = Player.new("Player 1", 3)
player2 = Player.new("Player 2", 3)
# puts player1.name
# puts player2.name