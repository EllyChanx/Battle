require_relative 'game'

class Player

  attr_reader :name
  attr_accessor :hp

  DEFAULT_HP = 50

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= rand(10..50)
  end


end



