class Player

  attr_accessor :name, :life_point  


  def initialize(name)
    @name = name
    @life_point = 10
  end


  def show_state 
      puts "#{@name} à #{@life_point} points de vie"
  end


  def gets_damage (a = 5)
    @life_point = @life_point - a 

    if @life_point > 0
    puts "#{@name} à #{@life_point} points de vie"
       
    else
    puts "Le joueur #{@name} à été tué"      
         
    end
  end


  def attacks (player)   
        b = compute_damage
        puts "Le joueur #{@name} attaque le joueur #{player.name}"
        puts "Le joueur #{@name} a fait perdre #{b} points de vie à #{player.name}"
        puts player.gets_damage(b)
         
  end

  def compute_damage
        return rand(1..6)
  end
end


