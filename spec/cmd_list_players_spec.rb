require_relative '../game'
require_relative '../cmd_list_players'

RSpec.describe CmdListPlayers do
    it 'returns a list of strings containing the players name and type' do
        game = Game.new
        game.add_player( game.master.create_player("knight", "Knight name") )
        list = CmdListPlayers.new(game).perform
        expect(list.count).to eq 1
        expect(list).to include("Knight name [ knight ]")
    end

    it 'returns empty list if there no players' do
        game = Game.new
        list = CmdListPlayers.new(game).perform
        expect(list.count).to eq 0
    end
end