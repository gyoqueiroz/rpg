require_relative '../dwarf'

RSpec.describe Dwarf do

    it 'attacks with a weapon' do
        dwarf = Dwarf.new('Dwarf')
        expect(dwarf.attack('axe')).to eq 0
    end
end