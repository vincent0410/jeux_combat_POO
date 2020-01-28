require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player3 = HumanPlayer.new ("jack")
print player3.show_state

puts player3.compute_damage
puts player3.search_weapon
puts @weapon_level
puts player3.search_health_pack
print player3.show_state
