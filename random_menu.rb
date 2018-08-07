# create three arrays of ten items each
adjectives = ["hot", "cold", "moist", "tender", "hard", "wild", "hard", "warm", "small", "salty"]
cooking_styles = ["fried", "caramlized", "broiled", "grilled", "smoked", "steamed", "baked", "raw", "minced", "tossed"]
foods = ["egg plant", "lamb", "icecream", "cod", "egg", "salmon", "rice", "pancake", "chicken", "beans"]

# or collects adjectives, styles and food from user
# adjectives = []
# cooking_styles = []
# foods =  []
# puts "Please provide 10 adjectives, cooking styles and foods."
# adjectives = []
# 10.times do
# print "Adjective: "
# adjective = gets.chomp
# adjectives << adjective
# end
#
# cooking_styles = []
# 10.times do
# print "Cooking style: "
# style = gets.chomp
# cooking_styles << style
# end
#
# foods = []
# 10.times do
# print "Food: "
# food_type = gets.chomp
# foods << food_type
# end

# collect amount of menu items to print from user
puts "How many menu items will you like to see? There are 10 items available"
menu_items = gets.chomp.to_i


#use suffle?


# prints menu items randomly
puts "Menu Items:"
menu_items.times do
  random_adjective = adjectives[rand(1...adjectives.length)]
  random_cooking_style = cooking_styles[rand(1...cooking_styles.length)]
  random_food = foods[rand(1...foods.length)]
  puts "#{random_adjective.capitalize} #{random_cooking_style} #{random_food}.\n"
end



# prints menu items wihout repeatition
# puts "Menu Items:"
# menu_items.times do
# puts "#{adjectives.delete(adjectives.sample).capitalize} #{cooking_styles.delete(cooking_styles.sample)} #{foods.delete(foods.sample)}.\n"
# end
