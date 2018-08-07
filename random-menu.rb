adjectives = []
cooking_styles = []
foods = []

puts "Happy Menu Planning! How many items would you like on the menu?"
choices = gets.chomp.to_i

puts "\nSounds great!"
puts "Please list #{choices} food descriptors (spicy, tangy, etc)"
choices.times do |x|
  print "#{x+1}: "
  adjectives[x] = gets.chomp
end

puts "\nPlease list #{choices} cooking styles (steamed, fried, etc)"
choices.times do |x|
  print "#{x+1}: "
  cooking_styles[x] = gets.chomp
end

puts "\nPlease list #{choices} different foods(salad, corndogs, etc)"
choices.times do |x|
  print "#{x+1}: "
  foods[x] = gets.chomp
end

# could also adjective.shuffle! cooking_styles.shuffle! ...etc 
# this would automatically change the original arrays 
# and you would not need to create an additional array
random_adjectives = adjectives.shuffle
random_cooking_styles = cooking_styles.shuffle
random_foods = foods.shuffle

puts "\nYour menu today includes: "
choices.times do |x|
  puts "#{x+1}. #{random_adjectives[x].capitalize} #{random_cooking_styles[x]}
  #{random_foods[x]}"
end

# -----optional solution------
# 
# puts "\nYour menu today includes: "
# choices.times do |x|
#   puts "#{x+1} #{adjectives.uniq[x]} #{cooking_styles.uniq[x]} #{foods.uniq[x]}"
# end

# --------- or ---------- 
# choices.times do |x|
#   puts "#{x+1}. #{adjectives.delete(descriptors.sampe)} 
#   #{cooking_styles.delete(cooking_style.sample)} #{foods.delete(foods.sample)}
# end 



#original arrays:
# adjectives = ["spicy", "squishy", "slathered", "crunchy", "firm", "gooey",
#   "bitter", "mouth-watering", "scrumptious", "zesty"]
#
# cooking_styles = ["baked", "grilled", "steamed", "blended", "aged",
#   "fire-roasted", "fried", "sauteed", "creamed", "burnt"]
#
# foods = ["stir-fry", "beet salad", "peanut butter brownie", "carrot soup",
#   "poke", "halibut", "cake", "pizza", "pickles", "pita"]
