require 'bundler'

Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts ""
puts "---------------------<> PLAYER 1 <>---------------------"
puts ""
puts "       Player 1 est :  #{player1.name} "
puts ""
puts "---------------------<> PLAYER 2 <>---------------------"
puts ""
puts "       Player 2 est :  #{player2.name} "
puts ""
puts "------------------<> Point de vie du joueur <>-----------------"
puts ""
     
  while player1.life_points > 0 && player2.life_points > 0

puts ""
puts "     #{player1.show_state} "
puts "     #{player2.show_state}"
puts ""
puts "----------------<> le duel <>------------------"
puts player1.attacks(player2)
break if player2.life_points <= 0             
puts ""
puts player2.attacks(player1)
end


