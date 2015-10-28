require 'player'

describe Player do
	subject(:dave) {described_class.new('dave')}

		it 'returns the name' do
			expect(dave.name).to eq 'dave'
		end

end