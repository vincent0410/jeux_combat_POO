#classe player correspondant au premier exercice

class Player


  attr_accessor :name, :life_point  

#on initialise la class, et on crée les méthodes pour combattre.

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

#class HumanPlayer correspondant au deuxiéme exercice.

class HumanPlayer<Player

      attr_accessor :weapon_level
  
    def initialize(name)      
      @weapon_level = 1
      super(name)
      @life_point = 100  

    end



    def show_state
      puts "#{name} à #{@life_point} points de vie et une arme de niveau #{@weapon_level}"
    end



    def compute_damage
      return rand(1..6)*@weapon_level
    end


    def search_weapon
      a=rand(1..6)
      puts"tu as trouvé une arme de niveau #{a}"
        if a > @weapon_level 
          puts "Youhou ! elle est meilleure que ton arme actuelle: tu la prends." 
          @weapon_level=a
        else
          puts "elle n'est pas mieux que ton arme actuelle"

        end
      end

    
      def search_health_pack
        v=rand(1..6)

        if v==1 
          puts " tu n'as rien trouvé"

        elsif v>=2 && v<=5
          puts "Bravo, tu as trouvé un pack de +50 points de vie"
          @life_point = @life_point + 50 
          
        else v==6
          puts "Waow, tu as trouvé un pack de +80 points de vie"
          @life_point =@life_point+ 80
          
        end
      end



  end


