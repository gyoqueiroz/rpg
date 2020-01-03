require_relative '../game'

RSpec.describe Game do

    it 'should contain a Game Master' do
        game = Game.new
        expect(game.master).to be_kind_of(Master)
    end

    it 'should contain one or more players' do
        game = Game.new
        knight = Knight.new("Knight")
        wizard = Wizard.new("Wizard")
        dwarf = Dwarf.new("Dwarf")
        game.add_player(knight)
        game.add_player(wizard)
        game.add_player(dwarf)

        expect(game.players.count).to eq 3 
    end
end