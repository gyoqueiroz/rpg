require_relative 'player'

class Dwarf < Player

    def initialize(name)
        super(name, 'dwarf')
    end

    def attack(weapon)
        return 0
    end

end