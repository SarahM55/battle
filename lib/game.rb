require_relative './player.rb'

class Game
  attr_reader :player_01, :player_02

  def initialize(player_01, player_02)
    @player_01 = player_01
    @player_02 = player_02
  end

  def attack(player)
    player.receive_damage
  end
end
