require 'player'

describe Player do 

  subject(:dave) { Player.new('Dave') }

  it "return the name of the player" do
    expect(dave.name).to eq "Dave"
  end

end