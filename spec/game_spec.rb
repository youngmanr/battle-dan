require './lib/game'

describe Game do
	let(:dave) {double :player}
  let(:mittens) {double :player}
  subject(:game) {described_class.new(dave, mittens)}

  describe '#attack' do
    it 'damage the player' do
      expect(mittens).to receive(:receive_damage)
      game.attack(mittens)
    end
  end
end