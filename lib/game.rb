# game of class of battle
class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = 1
  end
  # It's only accessible to other class methods
  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.reduce_hp
  end

  def switch
    @players.reverse!
  end
end
