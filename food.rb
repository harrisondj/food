class Food
	
	attr_accessor :name, :portion_size, :calories #, :portions_eaten

	def initialize(name, portion_size, calories)
		@name, @portion_size, @calories = name, portion_size, calories
	end

	def total_calories(portions_eaten)
		portions_eaten * calories
	end

	def to_s
		"#{name} | #{portion_size} | #{calories}"
	end

end