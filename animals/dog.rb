require_relative 'mammal'


class Dog < Mammal
	attr_accessor :healt

 	def initialize(healt)
		@healt = healt
		self
	end

	def pet 
		@healt += 5
		self
	end

	def walk
		@healt -= 1
		self
	end
	def run
		@healt -= 10
		self
	end
end


dog = Dog.new(150).walk.walk.walk.run.run.pet.display_healt
