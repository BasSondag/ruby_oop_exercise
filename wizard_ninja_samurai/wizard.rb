require_relative "human"
require_relative 'samurai'
class Wizard < Human
    def initialize 
        @health = 50
        @intelligence = 25
        self
    end

    def heal
        @health += 10
        self
    end

    def fireball(target)
        attack(target)
        target.health -= 20
        self
    end



end

samurai1 = Samurai.new
wizard1 = Wizard.new


wizard1.show_stats.heal.heal.heal.heal
samurai1.death_blow(wizard1)