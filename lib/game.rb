class Game

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn = 1
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
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

  def loser
    (@players.detect { |x| x.hp <= 0 }) 
  end

  def end_game?
    true if loser
  end

  def winner
    fail unless end_game?
    @players.detect {|x| x.hp >= 0}
  end

end