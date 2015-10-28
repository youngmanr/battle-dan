require './lib/game'

describe Game do
	let(:dave) {double :dave}
  let(:mittens) {double :mittens}
  subject(:game) {described_class.new(dave, mittens)}

  describe '#attack' do
    it 'damage the player' do
      expect(mittens).to receive(:receive_damage)
      game.attack(mittens)
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq dave
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq mittens
    end
  end

  describe '#attacker' do
    it 'assigns attacker to player 1' do
      expect(game.attacker).to eq dave
    end
  end

  describe '#switch_turn' do
    it 'switches attacker to player 2' do
      game.switch_turn
      expect(game.attacker).to eq mittens
    end
  end

end