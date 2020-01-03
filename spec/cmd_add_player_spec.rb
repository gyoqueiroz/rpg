require_relative '../game'
require_relative '../knight'
require_relative '../dwarf'
require_relative '../cmd_add_player'

RSpec.describe CmdAddPlayer do

    it 'adds a Knight type player to a game' do
        check_one_player_is_created_for_the_given_type("knight", Knight, "Knight name")
    end

    it 'adds a Wizard type player to a game' do
        check_one_player_is_created_for_the_given_type("wizard", Wizard, "Wizard name")
    end

    it 'adds a Dwarf type player to a game' do
        check_one_player_is_created_for_the_given_type("dwarf", Dwarf, "Dwarf name")
    end

    it 'should return true when adding a valid player type' do
        game = Game.new
        cmd = CmdAddPlayer.new(game)
        
        expect(cmd.perform("knight", "name")).to eq true
    end

    it 'should return false when adding an invalid player type' do
        game = Game.new
        cmd = CmdAddPlayer.new(game)
        
        expect(cmd.perform("invalid", "name")).to eq false
    end

    private

    def check_one_player_is_created_for_the_given_type(type, klass, name)
        game = create_game_and_command_and_add_player(type, name)
        expect(game.players.count).to eq 1
        expect(game.players[0]).to be_kind_of(klass)
        expect(game.players[0].name).to eq name
    end

    def create_game_and_command_and_add_player(type, name)
        game = Game.new
        cmd = CmdAddPlayer.new(game)
        
        cmd.perform(type, name)

        return game
    end

end