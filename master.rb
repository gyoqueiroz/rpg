require_relative 'player'
require_relative 'knight'
require_relative 'wizard'
require_relative 'dwarf'

class Master < Player

    def initialize(name) 
        super(name, 'master')
    end

    def create_player(type, name)
        if type == 'knight'
            return Knight.new(name)
        elsif type == 'wizard'
            return Wizard.new(name)
        elsif type == 'dwarf'
            return Dwarf.new(name)
        else
            raise Exception.new "Unknown #{type} player type"
        end
    end

end