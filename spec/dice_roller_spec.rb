require_relative '../dice_roller'

RSpec.describe DiceRoller do

    it 'rolls a 6 side dice 1 time and returns a valid integer between the possible values' do
        result = DiceRoller.new.roll(1, 6)
        expect(result).to be_kind_of(Numeric)
        expect(result).to be_between(1,6)
    end

    it 'returns 0 when a dice is rolled 0 times' do
        result = DiceRoller.new.roll(0, 10)
        expect(result).to be_kind_of(Numeric)
        expect(result).to eq 0
    end
end