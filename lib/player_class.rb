require "pry"

class Player
  attr_accessor :name, :symbol

  def initialize(player_name)
    @name = name
    @symbol = symbol
  end

  def player_name
    puts "What is this player's name?"
    print ">"
    return gets.chomp
  end
end
