require 'game'

describe Game do

  let(:player1) { double(:player) }
  let(:player2) { double(:player, reduce_hp: true) }
  let(:game1) { described_class.new("Lewis","Gabriela") }

  describe "Attributes" do
    it "creates a new instance of game" do
      expect(game1).to be_an_instance_of(Game)
    end

    it "takes two arguments upon instantiation" do
      allow(game1).to receive(:player1).and_return("Lewis")
      expect(game1.player1).to eq("Lewis")
    end

    it "takes two arguments upon instantiation" do
      allow(game1).to receive(:player2).and_return("Gabriela")
      expect(game1.player2).to eq("Gabriela")
    end
  end

  describe "#attack" do
    context "when attacking" do
      it "calls player.reduce_hp" do
        game1.attack(player2)
      end
    end

  end

end
