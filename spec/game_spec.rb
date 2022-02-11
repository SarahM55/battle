require 'game'

describe Game do
  let(:player_01) { double :player }
  let(:player_02) { double :player }

  describe '#attack' do
    it 'deals damage to the other player' do
      expect(player_02).to receive(:receive_damage)
      subject.attack(player_02)
    end
  end
end