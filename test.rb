require "./food"
require "./meal"

scrambled_eggs = Food.new("Scambled Eggs", "1 egg", 100)
bacon = Food.new("Bacon", "3 slices", 100)
cereal = Food.new("Cereal", "1 oz", 135)

# puts scambled_eggs

breakfast = Meal.new("breakfast")
breakfast.add_food(scrambled_eggs, 3)
breakfast.add_food(bacon, 2)
breakfast.add_food(Food.new("Cereal", "1 oz", 135), 2)

puts breakfast
puts "Breakfast calories: #{breakfast.calories}"