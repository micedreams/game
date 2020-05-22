require_relative "./application/die"
require_relative "./application/game_turn"
require_relative "./application/game"
require_relative "./application/player"
require_relative "./application/treasure_trove"

class StudioGame
  def initialize
    player1 = Player.new("moe", 120)

    player2 = Player.new("Larry", 80)

    player3 = Player.new("curly", 145)

    knuckleheads = Game.new("Knuckleheads")
    knuckleheads.add_player(player1)
    knuckleheads.add_player(player2)
    knuckleheads.add_player(player3)
    

    loop do
      puts "\nHow many game rounds? ('quit' to exit)"
      answer = gets.chomp.downcase
      case answer
      when /^\d+$/
        knuckleheads.play(answer.to_i)
      when "quit", "exit"
        break
      else
        puts "Please enter a number or 'quit'"
      end
    end
  end
end

