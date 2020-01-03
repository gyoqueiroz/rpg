require_relative 'master'

class Game
    attr_reader :master, :players

    def initialize()
        @master = Master.new("Master")
        @players = []
    end

    def add_player(player)
        players << player
    end
end