require 'player'

describe Player do
  subject(:francesco) { Player.new('Francesco') }
  subject(:sarah) { Player.new('Sarah') }

  describe '#name' do
    it 'returns the name' do
      expect(francesco.name).to eq 'Francesco'
      expect(sarah.name).to eq 'Sarah'
    end
  end

  describe '#hit_points' do
    it 'shows the player\'s hit points' do
      expect(francesco.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the other player\'s hit points' do
      expect { francesco.receive_damage }.to change { francesco.hit_points }.by(-10)
    end
  end
end