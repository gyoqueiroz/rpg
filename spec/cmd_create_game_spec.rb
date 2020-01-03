require_relative '../cmd_create_game'

RSpec.describe CmdCreateGame do

    it 'should create and return a new game' do
        cmd = CmdCreateGame.new
        expect(cmd.perform).to be_kind_of(Game)
    end
end