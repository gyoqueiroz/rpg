require_relative 'player'

class Wizard < Player

    def initialize(name)
        super(name, 'wizard')
    end

    def attack(weapon)
        return 0
    end

    def spell
        return 0
    end

    def heal
        return 0
    end
end