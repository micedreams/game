module GameTurn
  def self.take_turn(player)
    number_rolled = Die.new.roll

    if number_rolled < 3
      player.blam
    elsif number_rolled > 4
      player.w00t
    else
      puts "#{player.name} was skipped. "
    end
    treasure = TreasureTrove.random
    player.found_treasure(treasure)
  end
end
