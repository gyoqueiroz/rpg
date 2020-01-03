require_relative 'player'

class Knight < Player

    def initialize(name)
        super(name, 'knight')
    end

    def attack(weapon)
        return 0
    end
end