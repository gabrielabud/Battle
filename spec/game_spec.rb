require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe 'Attributes' do
    it 'creates a new instance of game' do
      expect(game1).to be_an_instance_of(Game)
    end

    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end

    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end
  # describe "#attack" do
  #     it "calls player.reduce_hp" do
  #       game.attack(player_2)
  #     end
  # end
end
