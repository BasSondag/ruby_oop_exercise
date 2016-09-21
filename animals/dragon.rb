require_relative 'mammal'


class Dragon < Mammal
	attr_accessor :healt

 	def initialize(healt)
		@healt = healt
		self
	end

	def fly
		@healt -= 10
		self
	end

	def attack_town
		@healt -= 50
		self
	end
	def eat_humans
		@healt += 20
		self
	end
	def speak
		puts " this is the Dragon the "
		self
	end
end


Dragon = Dragon.new(170).attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.speak.display_healt
