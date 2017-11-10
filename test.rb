require "./food"
require "./meal"
require "./day"
require "./exercise"

scrambled_eggs = Food.new("Scambled Eggs", "1 egg", 100)
bacon = Food.new("Bacon", "3 slices", 100)
cereal = Food.new("Cereal", "1 oz", 135)
milk = Food.new("Milk", "1 cup", 125)
orange = Food.new("Orange Juice", "1 cup", 110)
beef = Food.new("Roast Beef Sandwich", "1 sandwich", 345)
salad = Food.new("Salad", "1 cup", 11)
dressing = Food.new("Salad Dressing", "1 tbsp", 145)
chicken_soup = Food.new("Chicken Noodle Soup", "1 cup", 75)
sweet_tea = Food.new("Sweet Tea", "8 oz", 100)
broccoli = Food.new("Broccoli", "1 cup", 40)
steak = Food.new("Steak", "5 oz", 240)
mashed = Food.new("Mashed Potatoes", "1 cup", 255)
gravy = Food.new("Gravy", "1 cup", 125)
rice = Food.new("Rice", "1 cup", 230)
ice_cream = Food.new("Ice Cream", "1 cup", 270)
soda = Food.new("Soda", "12 oz", 180)
chips = Food.new("Chips", "10 chips", 100)
fruit_snacks = Food.new("Fruit Snacks", "1 bag", 89)
trail_mix = Food.new("Trail Mix", "1 cup", 693)
jogging = Exercise.new("Jogging", 30, 300)
yoga = Exercise.new("Yoga", 20, 240)
weights = Exercise.new("Weightlifting", 45, 256)

breakfast = Meal.new("breakfast")
breakfast.add_food(scrambled_eggs, 3)
breakfast.add_food(bacon, 2)
breakfast.add_food(Food.new("Cereal", "1 oz", 135), 2)
breakfast.add_food(milk, 1)
breakfast.add_food(orange, 1)

lunch = Meal.new("lunch")
lunch.add_food(beef, 1)
lunch.add_food(salad, 2)
lunch.add_food(dressing, 3)
lunch.add_food(chicken_soup, 1.5)
lunch.add_food(sweet_tea, 2)

dinner = Meal.new("dinner")
dinner.add_food(steak, 1.6)
dinner.add_food(mashed, 1.5)
dinner.add_food(soda, 1)
dinner.add_food(gravy, 0.25)
dinner.add_food(rice, 1)
dinner.add_food(ice_cream, 1)

snacks = Meal.new("snacks")
snacks.add_food(chips, 3)
snacks.add_food(fruit_snacks, 1)
snacks.add_food(trail_mix, 0.2)

day = Day.new("meals")
day.add_meal(breakfast)
day.add_meal(lunch)
day.add_meal(dinner)
day.add_meal(snacks)
day.add_exercise(jogging, 30)
day.add_exercise(yoga, 20)
day.add_exercise(weights, 45)

puts breakfast
puts "Breakfast calories: #{breakfast.calories}"
puts "\n", lunch
puts "lunch calories: #{lunch.calories}"
puts "\n", dinner
puts "dinner calories: #{dinner.calories}"
puts "\n", snacks
puts "Snack calories: #{snacks.calories}"

puts "\nTotal calories in the day", day.day_calories
puts day.met_goal?

puts "Gained #{day.limit_calories(30)} pounds"

puts "\nCalories burned exercising: #{day.workout_calories}"