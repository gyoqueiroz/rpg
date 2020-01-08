require_relative '../dice_roller'

RSpec.describe DiceRoller do

    it 'rolls a 6 side dice 1 time and returns a valid integer between the possible values' do
        result = DiceRoller.new.roll(1, 6)
        expect(result).to be_kind_of(Numeric)
        expect(result).to be_between(1, 6)
    end

    it 'returns 0 when a dice is rolled 0 times' do
        result = DiceRoller.new.roll(0, 10)
        expect(result).to be_kind_of(Numeric)
        expect(result).to eq 0
    end

    describe 'Pre-defined dices' do

        it 'rolls a D4 dice and returns a valid integer within the possible ranges' do
            roll_dice_and_assert(DiceRoller::D4, 15, 4)
        end

        it 'rolls a D6 dice and returns a valid integer within the possible ranges' do
            roll_dice_and_assert(DiceRoller::D6, 15, 6)
        end

        it 'rolls a D8 dice and returns a valid integer within the possible ranges' do
            roll_dice_and_assert(DiceRoller::D8, 15, 8)
        end

        it 'rolls a D10 dice and returns a valid integer within the possible ranges' do
            roll_dice_and_assert(DiceRoller::D10, 15, 10)
        end

        it 'rolls a D12 dice and returns a valid integer within the possible ranges' do
            roll_dice_and_assert(DiceRoller::D12, 15, 12)
        end

        it 'rolls a D20 dice and returns a valid integer within the possible ranges' do
            roll_dice_and_assert(DiceRoller::D20, 15, 20)
        end
    end

    def roll_dice_and_assert(dice, amount, range_max)
        (1..amount).each do |rolling_times|
            result = DiceRoller.new.roll_dice(dice, rolling_times)
            expect(result).to be_kind_of(Numeric)
            expect(result).to be_between(1, range_max * rolling_times)
        end
    end

end