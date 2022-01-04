require './game.rb'
require './player.rb'
require './question.rb'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

game = Game.new([player1, player2])
game.gameplay 