adjectives = [" delicious", " rich", " firm", " hot", " sweet", " peppery", " salty", " creamy", " sour", " tangy"]
cooking_style = [" deep fried"," pan fried", " sauteed", " skewered", " barbecued"," boiled", " stirred", " seered", " charbroiled"," roasted"]
foods = [" bread", " portabella", " lamb", " tomatoes", " carrots", " corn", " sweet potatoes", " onions", " chicken", " duck"]
puts

adjectives = adjectives.uniq
cooking_style = cooking_style.uniq
foods = foods.uniq

num = 1
10.times do
# puts adjectives.sample(1 + rand(adjectives.count))
# BELOW is the one that works
puts "menu item # #{ num}" + adjectives.sample + cooking_style.sample + foods.sample
# puts "menu item # #{ num}" + adjectives.shuffle.each + cooking_style.shuffle.each

num += 1
end
