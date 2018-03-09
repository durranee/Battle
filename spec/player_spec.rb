require 'player'

describe Player do
  subject(:p1) { Player.new('P1') }

  describe '#name' do
    it 'returns the name' do
      expect(p1.name).to eq 'P1'
    end
  end

  describe '#attacked' do
    it 'reduces HP points by 10' do
      p1.attacked
      expect { p1.attacked }.to change { p1.hp }.by(-10)
    end
  end
end
