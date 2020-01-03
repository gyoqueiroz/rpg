require_relative 'game'

class CmdCreateGame
    def perform
        return Game.new
    end
end