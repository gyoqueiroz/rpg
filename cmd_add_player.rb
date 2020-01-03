class CmdAddPlayer 
    def initialize(game)
        @game = game
    end

    def perform(type, name)
        player = @game.master.create_player(type, name)
        if player != nil
            @game.add_player(player)
            return true
        end
        return false
    end
end