require_relative "human"


class Samurai < Human
	@@no_of_samurai = 0
	def initialize
		@health = 200
		@@no_of_samurai += 1
		self
	end

	def death_blow(target)
		target.health = 0 
		self
	end
	def meditate
		@health = 200
		self
	end
	def no_of_samurai
		puts "there are %s" % @@no_of_samurai
		self
	end
end	
