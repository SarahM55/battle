require 'player'

describe Player do
  subject(:francesco) { Player.new('Francesco') }

  describe '#name' do
    it 'returns the name' do
      expect(francesco.name).to eq 'Francesco'
    end
  end
end
