class Game

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn = 1
  end

  def attack(player)
    player.receive_damage
    @turn += 1
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def cur_active
    (@turn%2 == 0) ? player_2 : player_1
  end

  def cur_passive
    (@turn%2 == 0) ? player_1 : player_2
  end

end