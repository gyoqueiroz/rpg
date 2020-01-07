class DiceRoller
    def roll(amount = 0, sides = 0)
      # rand(1..0) will return nil btw
      amount.to_i.times.sum { |t| rand(1..sides.to_i) }
    end

    # loop do
    # input = gets.chomp.to_s

    # abort("May your rolls be ever natural.") if input == "exit"

    # amount, sides, mod = input.tr("^0-9", " ").split
    # fin = roll(amount, sides) + mod.to_i # nil converts to 0

    # puts fin
    # end
end