class Human
    attr_accessor :strength, :intelligence, :health, :stealth
    def initialize
        @strength = 3
        @intelligence = 3
        @health = 100
        @stealth = 3
        self
    end

    def attack(target)
        if target.class.ancestors.include?(human)
            target.health -= 10
            true
        else
            false
        end
        self
    end

    def show_stats
        puts "your strength: %s" % @strength
        puts "your intelligence: %s" % @intelligence
        puts "your health: %s" % @health
        puts "your stealth: %s" % @stealth
        self
    end
end


	