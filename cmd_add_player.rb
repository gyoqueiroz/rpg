class CmdAddPlayer 
    def initialize(game)
        @game = game
    end

    def perform(type, name)
        begin
            player = @game.master.create_player(type, name)
            @game.add_player(player)
        rescue Exception => msg
            puts "Not adding player. #{msg}"
        end
    end
end