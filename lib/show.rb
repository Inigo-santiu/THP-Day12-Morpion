# Show : cette classe sera une sorte de view. Elle affichera l'état du plateau de jeu à un instant T.

require_relative 'board'
require_relative 'game'
require_relative 'application'

class Show
  attr_accessor :hash
  
  def initialize(hash)
    @hash = hash
    @hash = Game.new.grid.boardcases_hash
    p @hash
  end

  def show_board
    puts "   | _A_ | _B_ | _C_ |"
    puts "   |     |     |     |"
    puts " 1 |  #{@hash.values_at("A1")}  |  #{@hash.values_at("A2")}  |  #{@hash.values_at("A3")}   |"
    puts "   |     |     |     |"
    puts  "-"*19 
    puts "   |     |     |     |"
    puts " 2 |  #{@hash.values_at("B1")}  |  #{@hash.values_at("B2")}  |  #{@hash.values_at("B3")}   |"
    puts "   |     |     |     |" 
    puts  "-"*19
    puts "   |     |     |     |"
    puts " 3 |  #{@hash.values_at("C1")}  |  #{@hash.values_at("C2")}  |  #{@hash.values_at("C3")}   |"
    puts "   |     |     |     |"
    puts "-"*19
    puts ''

  end
end
