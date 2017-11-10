class Exercise
	
	attr_accessor :name, :time, :calories

	def initialize(name, time, calories)
		@name, @time, @calories = name, time, calories
	end

	def exercise_calories(minutes)
		(calories / 60.0) * minutes
	end

	def to_s
		"#{calories}"
	end

end