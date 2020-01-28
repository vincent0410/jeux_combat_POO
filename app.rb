require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

# on défini les instances qui vont combattre 

player1 = Player.new ("Josiane")
player2 = Player.new ("José")

# présentation des combatants
# Debut du combat, tant que l'un des combatants
# a encore des points de vie, la boucle se relance.
while player1.life_point > 0 && player2.life_point >0  

  puts""
  puts "Voici l'état de chaque joueur"
  print player1.show_state   
  print player2.show_state
  
  puts ""
  puts""

  puts "Passons à la phase d'attaque"
  puts""
  print player1.attacks(player2)
  if player2.life_point<=0
     break  
  end
  print player2.attacks(player1)

end


