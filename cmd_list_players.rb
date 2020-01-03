
class CmdListPlayers
    def initialize(game)
        @game = game
    end

    def perform
        return @game.players.map { |player| "#{player.name} [ #{player.type} ]" }
    end
end