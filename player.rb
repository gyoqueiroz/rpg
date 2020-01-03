class Player
    attr_reader :name, :type

    def initialize(name, type)
        @name = name
        @type = type
    end

    def attack(weapon)
        raise "Not implemented"
    end
end