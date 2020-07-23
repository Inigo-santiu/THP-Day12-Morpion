# Application : cette classe va nous permettre de lancer le jeu. 
# Elle va faire une boucle infinie de parties (on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game.

require_relative 'game'
require_relative 'show'
require_relative 'board'
require_relative 'boardcase'
require_relative 'player'


class Application
  attr_accessor :game, :board_to_show, :hash

  def initialize
    puts 'welcome to morpion madness!!!!!'
    @game = Game.new
    @hash = @game.grid.boardcases_hash
    @board_to_show = Show.new(hash)
    perform
  end
  
  def party
    while @game.is_going? == true
       @game.player_selection
       @game.is_going?

       puts @game.grid.boardcases_hash
       showing_board
     end
  end

  def showing_board
    @board_to_show.show_board
  end

  def perform
     party
     showing_board
  end
   
  #binding.pry

end
