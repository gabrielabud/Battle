require 'game'

describe Game do

  let(:player) { double(:player, reduce_hp: true) }

  describe "Attributes" do
    it "creates a new instance of game" do
      expect(subject).to be_an_instance_of(Game)
    end
  end

  describe "#attack" do
    context "when attacking" do
      it "hurts the player" do
        subject.attack(player)
      end
    end
  end


end
