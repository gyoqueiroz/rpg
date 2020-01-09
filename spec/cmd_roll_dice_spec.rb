require_relative '../cmd_roll_dice'
require_relative '../dice_roller'

RSpec.describe CmdRollDice do

    it 'rolls a dice 1 time and returns a numeric result' do
        expect(CmdRollDice.new.perform("D6", 1)).to be_kind_of(Numeric)
    end

    it 'raises exception if the given dice name does not exist' do
        expect { CmdRollDice.new.perform("UNKNOWN_DICE", 1) }.to raise_exception
    end

end
