require_relative '../master'

RSpec.describe Master do

    it 'creates knight player' do
        master = Master.new('master')
        player = master.create_player('knight', 'knight_name')
        expect(player).to be_kind_of(Knight)
        expect(player.name).to eq 'knight_name'
    end

    it 'creates wizard player' do
        master = Master.new('master')
        player = master.create_player('wizard', 'wizard_name')
        expect(player).to be_kind_of(Wizard)
        expect(player.name).to eq 'wizard_name'
    end

    it 'creates dwarf player' do
        master = Master.new('master')
        player = master.create_player('dwarf', 'dwarf_name')
        expect(player).to be_kind_of(Dwarf)
        expect(player.name).to eq 'dwarf_name'
    end

    it 'raises an exception for unknown player type' do
        type = "unknown_type"
        expect { Master.new('master').create_player(type, 'name') }.to raise_exception("Unknown #{type} player type")
    end
end