require_relative '../player'

RSpec.describe Player do

    it 'creates a player instance with a name and type' do
        player = Player.new("player1", "a_type")
        expect(player).to be_kind_of(Player)
        expect(player.name).to eq "player1"
        expect(player.type).to eq "a_type"
    end

    it 'raises an error when attack abstract method is called' do
        player = Player.new("player1", "a_type")
        expect { player.attack("weapon") }.to raise_error("Not implemented")
    end
end