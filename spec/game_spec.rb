require 'game'

describe Game do
  subject(:game) { described_class.new(player_01, player_02) }
  let(:player_01) { double :player }
  let(:player_02) { double :player }

  describe '#attack' do
    it 'deals damage to the other player' do
      expect(player_02).to receive(:receive_damage)
      game.attack(player_02)
    end
  end

  describe '#player_1' do
    it 'begins with player 1' do
      expect(game.player_01). to eq player_01
    end
  end

  describe '#player_2' do
    it 'begins with player 2' do
      expect(game.player_02). to eq player_02
    end
  end
end