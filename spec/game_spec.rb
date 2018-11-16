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
      expect(game.cur_active).to eq player1
    end
    
    it "switch turn after attack" do
      allow(player2).to receive(:receive_damage){true}
      game.attack(player2)
      expect(game.cur_active).to eq player2
    end
  end

  describe "end game!" do

    it "find loser in the game - player1" do
      allow(player2).to receive(:hp) {10}
      allow(player1).to receive(:hp) {0}
      expect(game.loser).to eq player1
    end

    it "find loser in the game - player1" do
      allow(player2).to receive(:hp) {0}
      allow(player1).to receive(:hp) {10}
      expect(game.loser).to eq player2
    end

    it "end game if one player's hp reach  0" do
      allow(player2).to receive(:hp) {0}
      allow(player1).to receive(:hp) {10}
      game.loser
      expect(game.end_game?).to eq true
    end
  end

  it "shows winner is player1" do
    allow(player2).to receive(:hp) {0}
    allow(player1).to receive(:hp) {10}
    expect(game.winner).to eq player1
  end
  
end