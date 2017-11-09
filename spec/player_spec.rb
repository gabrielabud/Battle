require 'player'

describe Player do

  it "returns a name" do
    player1 = Player.new("Gabriela")
    expect(player1.name).to eq("Gabriela")
  end
end
