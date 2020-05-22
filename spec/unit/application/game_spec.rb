require "spec_helper"

describe Game do
  before do
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)

    @game.add_player(@player)
  end

  it "gives w00t when high number is rolled" do
    Die.any_instance.stub(:roll).and_return(5)
    @game.play(2)
    @player.health.should == @initial_health + (15 * 2)
  end

  it "gives w00t when medium number is rolled" do
    Die.any_instance.stub(:roll).and_return(3)
    @game.play(2)
    @player.health.should == @initial_health
  end

  it "gives w00t when low number is rolled" do
    Die.any_instance.stub(:roll).and_return(1)
    @game.play(2)
    @player.health.should == @initial_health - (10 * 2)
  end

  it "assigns a treasure for points during a player's turn" do
    game = Game.new("Knuckleheads")
    player = Player.new("moe")
  
    game.add_player(player)
  
    game.play(1)
  
    player.points.should_not be_zero
  end  
end
