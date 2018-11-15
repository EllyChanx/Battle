require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  it "damage play" do
    expect(player2).to receive(:receive_damage)
    game.attack(player2)
  end

  it "receive the first player and player 1" do
    expect(game.player_1).to eq player1
  end

  it "receive the second player as player 2" do
    expect(game.player_2).to eq player2
  end

  describe "# switch turn function" do

    it "initial current turn is player 1" do
      expect(game.cur_turn).to eq player1
    end
    
    it "switch turn after attack" do
      allow(player2).to receive(:receive_damage){true}
      game.attack(player2)
      expect(game.cur_turn).to eq player2
    end

  end
  
end