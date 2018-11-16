require 'player'

describe Player do 

  subject(:dave) { Player.new('Dave') }

  it "return the name of the player" do
    expect(dave.name).to eq "Dave"
  end

  it "return the default hp" do
    expect(dave.hp).to eq described_class::DEFAULT_HP
  end 

  # it "reduce player hp when receive dmg" do
  #   expect{dave.receive_damage}.to change {dave.hp}.by(-10)
  # end

end