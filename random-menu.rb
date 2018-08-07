#arrays
adjectives = ["hot", "cold", "warm", "freezing","sizzling", "lukewarm",
"boiling", "blazing", "red", "flaming"]
cooking_style = ["steamed", "boiled", "sautéed", "barbecued", "braised", "charbroiled",
"cured", "dry-roasted", "fried", "glazed"]
foods = ["potatoes", "salad", "lasagna", "pizza", "chicken", "lobsters", "pad-thai", "eggplant",
"eggs", "soup"]


result_a = []
 1.times { result_a << adjectives.slice!( rand(adjectives.size) ) }

 result_c = []
  1.times { result_c << cooking_style.slice!( rand(cooking_style.size) ) }

  result_f = []
   #1.times { result_f << foods.slice!( rand(foods.size) ) }
   1.times { result_f << foods.slice!(rand(foods)}

random_food_item = result_a + result_c + result_f
(1...2).each do
  puts random_food_item
end
