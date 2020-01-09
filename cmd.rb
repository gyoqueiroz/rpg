require 'readline'
require_relative 'cmd_create_game'
require_relative 'cmd_add_player'
require_relative 'cmd_list_players'
require_relative 'cmd_roll_dice'

class Cmd
  COMMANDS = ['create_game', 'add_player', 'list_players', 'roll_dice']

  def initialize
    @game = nil
    print_banner
    puts "Welcome to The Lost World of Nowhere!\n"
  end

  def process_command(cmd)
    cmd_and_params = cmd.split()
    main_cmd = cmd_and_params[0]
    params = cmd_and_params.drop(1)

    begin
      validate_command(main_cmd)

      if main_cmd == 'create_game'
        @game = CmdCreateGame.new.perform
        puts "Game created! Use 'add_player <type> <name>' command to add players"
      elsif main_cmd == 'add_player'
        if check_game_is_created
          CmdAddPlayer.new(@game).perform(params[0], params[1])
        end
      elsif main_cmd == 'list_players'
        if check_game_is_created
          puts CmdListPlayers.new(@game).perform
        end
      elsif main_cmd == 'roll_dice'
        if check_game_is_created
          puts CmdRollDice.new.perform(params[0].upcase, params[1])
        end  
      end
    rescue Exception => msg
      puts msg
    end
  end

  def validate_command(cmd)
    if !COMMANDS.include? cmd
      raise Exception.new "Invalid command -> #{cmd}. Available commands:\n" + COMMANDS.map { |c| "> #{c}" }.join("\n")
    end
  end
  
  def check_game_is_created
    if @game == nil 
      puts "Game is not created! Use create_game first"
      return false
    end
    return true 
  end

  def print_banner
    puts File.open("banner.txt").read()
  end

end

prompt = ">"
command_processor = Cmd.new
while buf = Readline.readline(prompt, true)
  if ['quit', 'exit'].include? buf
    exit
  end
  command_processor.process_command(buf)
end
