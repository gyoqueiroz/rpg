require_relative 'dice'

class DiceRoller
    D4 = Dice.new("D4", 4)
    D6 = Dice.new("D6", 6)
    D8 = Dice.new("D8", 8)
    D10 = Dice.new("D10", 10)
    D12 = Dice.new("D12", 12)
    D20 = Dice.new("D20", 20)

    def roll(times = 0, sides = 0)
        # rand(1..0) will return nil btw
        times.to_i.times.sum { |t| rand(1..sides.to_i) }
    end

    def roll_dice(dice, times = 0)
        roll(times, dice.sides)
    end

    # loop do
    # input = gets.chomp.to_s

    # abort("May your rolls be ever natural.") if input == "exit"

    # amount, sides, mod = input.tr("^0-9", " ").split
    # fin = roll(amount, sides) + mod.to_i # nil converts to 0

    # puts fin
    # end
end

