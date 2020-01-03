require_relative '../wizard'

RSpec.describe Wizard do

    it 'throws a spell' do
        wizard = Wizard.new('mister m')
        expect(wizard.spell).to eq 0
    end

    it 'heals' do
        wizard = Wizard.new('mister m')
        expect(wizard.heal).to eq 0
    end

    it 'is not able to attack with weapon' do
        wizard = Wizard.new('mister m')
        expect(wizard.attack("weapon")).to eq 0
    end
end