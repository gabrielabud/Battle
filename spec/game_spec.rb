require 'game'

describe Game do

  let(:player1) { double(:player) }
  let(:player2) { double(:player, reduce_hp: true) }
  let(:game1) { described_class.new(player1,player2) }

  describe "Attributes" do
    it "creates a new instance of game" do
      expect(game1).to be_an_instance_of(Game)
    end

    it "at it has player1 at instantiation" do
      expect(game1.player1).to eq player1
    end

    it "at it has player 2 at instantiation" do
      expect(game1.player2).to eq player2
    end
  end

  describe "#attack" do
    context "when attacking" do
      it "hurts the player" do
        subject.attack(player2)
      end
    end

  end


end
