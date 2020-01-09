require_relative 'dice_roller'

class CmdRollDice

    def initialize
        @dice_roller = DiceRoller.new
    end

    def perform(dice_name, times)
        dice = nil
        begin
            dice = Kernel.const_get("DiceRoller::#{dice_name}")
        rescue
            raise Exception.new "Dice name not recognised"
        end

        @dice_roller.roll_dice(dice, times)
    end
end