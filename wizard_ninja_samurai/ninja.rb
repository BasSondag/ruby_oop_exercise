require_relative "human"
class Ninja < Human
	def initialize
		@stealth = 175
		self
	end

	def steal
		atack(target)
		@health += 10
		self
	end

	def get_away
		@health -= 15
		self
	end

end