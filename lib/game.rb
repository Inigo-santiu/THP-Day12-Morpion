# Game : c'est le jeu. Elle initialise tout, lance une partie (qui se termine avec une victoire ou un nul), permet de jouer un tour, de chercher si la partie est finie, etc.
# cette classe s'occupe de gérer toute la partie. À l'initialisation elle crée 2 instances de Player, et 1 instance de Board.

# Variables d'instance : 
# tu peux lui rattacher les 2 players (sous forme d'un array), le Board, et des informations annexes comme "quel joueur doit jouer ?", 
# "quel est le statut de la partie (en cours ? player1 a gagné ? etc.)", etc.

# Méthodes : 
# Game permet de jouer un tour (demande au joueur ce qu'il veut faire et rempli la case), 
# s'occupe de finir la partie si un joueur a gagné et propose aux joueurs de faire une nouvelle partie ensuite.
require'pry'
require_relative 'player'
require_relative 'board'

class Game
	attr_accessor :grid, :players, :turn

	def initialize
		@players = []
    @grid = Board.new
    @turn_count = 0
    creating_players
	end

  def creating_players
      @players << Player.new("x")
      @players << Player.new("o")
  end
  
  


end