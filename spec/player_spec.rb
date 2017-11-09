require 'player'

describe Player do
  player1 = Player.new("Gabriela",100)
  player2 = Player.new("Lewis",100)

  it "returns a name" do
    expect(player1.name).to eq("Gabriela")
  end

  it "returns the hit points" do
    expect(player1.hp).to eq described_class::DEFAULT_HP
  end

  it "reduces player2 hit points" do
    player1.attack(player2)
    expect(player2.reduce_hp).to change { player2.hp }.by{-10}
  end
end
