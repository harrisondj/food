class Day

	attr_accessor :calories
	DAILY_CALORIE_GOAL = 2000
	
	def initialize(calories)
		@calories = calories
		@meals = []
		@workout = []
	end

	def add_meal(meal)
		@meals.push(meal)
	end

	def add_exercise(exercise, time)
		@workout.push(exercise.exercise_calories(time))
	end

	def workout_calories
		burned_calories = 0
		@workout.each_with_index do |exercise_item, i|
			burned_calories += exercise_item
		end

		burned_calories
	end

	def day_calories
		meal_calories = 0
		@meals.each_with_index do |meal_item, i|
			meal_calories += meal_item.calories
		end

		meal_calories
	end

	def met_goal?
		if day_calories < DAILY_CALORIE_GOAL
			puts "Met daily goal"
		else
			puts "Exceeded daily goal"
		end
	end

	# def to_s
	# 	"#{@meals}"
	# end

	def limit_calories(days)
		ammout = (day_calories - (DAILY_CALORIE_GOAL + workout_calories)) * days / 3500
		ammout.floor
	end

end