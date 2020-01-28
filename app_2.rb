require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


puts "---------------------------------"
puts "|    BIENVENUE DANS LE JEUX     |"
puts "---------------------------------"

puts "Quel est ton prénom ?"
prenom=gets.chomp

player3 = HumanPlayer.new(prenom)
player4 = Player.new ("josé")
player5 = Player.new ("josiane")

enemies = [player4, player5]

while player3.life_point>0 && (player4.life_point>0 || player5.life_point>0) 

end




