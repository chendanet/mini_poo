require 'pry'

class Player 
    attr_accessor :name, :life_points, :show_state, :gets_damage


    def initialize(name)
        @name = name
        @life_points = life_points = 10
    end


    def show_state
        show_state = puts "#{name} a #{life_points} points de vie"
    end

    def gets_damage(damage_received)

        @life_points = @life_points - damage_received
        if @life_points <= 0 
            puts "le joueur #{name} a été tué !"
        end
    end

    
    def attacks(player)
        puts "#{name} attaque #{player.name}" # A REVOIR
        damage_received = compute_damage.to_i # ma variable damage_received généré par mon rand(1..6)
        puts "il lui inflige #{damage_received} points de dommages"

        player.gets_damage(damage_received)
    end


    def compute_damage
        return rand(1..6)
      end

end


